FROM python:3.9-slim

WORKDIR /app

RUN pip install Flask

RUN cat > app.py << 'EOF'
from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    return '<h1>🎉 CI/CD Success! Your app is deployed on Cloud Run!</h1>'

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 8080))
    app.run(host='0.0.0.0', port=port)
EOF

EXPOSE 8080

CMD ["python", "app.py"]
