module.exports = {
    apps: [
      {
        name: 'devcafe-website',
        script: '/var/lib/jenkins/workspace/devcafe-website/start-docker-compose.sh',
        autorestart: true,
        watch: false,
        log_date_format: 'YYYY-MM-DD HH:mm Z',
        error_file: '/var/lib/jenkins/workspace/devcafe-website/pm2_error.log',
        out_file: '/var/lib/jenkins/workspace/devcafe-website/pm2_out.log',
        combine_logs: true,
      },
    ],
  };