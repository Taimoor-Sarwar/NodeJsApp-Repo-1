const express = require('express');
const bodyParser = require('body-parser');
const simpleGit = require('simple-git');
const git = simpleGit();

const app = express();
const port = 3000;

app.use(bodyParser.json());

// GitHub Webhook endpoint
app.post('/webhook', (req, res) => {
    console.log('Webhook received:', req.body);

    // Check for the push event
    if (req.body.ref === 'refs/heads/main') {
        console.log('New push to main branch, pulling changes...');

        // Pull the latest code from GitHub
        git.pull('origin', 'main', (err, update) => {
            if (err) {
                return res.status(500).send('Failed to pull the latest code');
            }

            console.log('Updated repo:', update);
            // Optionally restart the application here (e.g., using PM2 or Node.js)
            res.status(200).send('Deployment successful');
        });
    } else {
        res.status(400).send('Not a push to main branch');
    }
});

app.listen(port, () => {
    console.log(`Webhook server listening at http://localhost:${port}`);
});

