# Notre site de mariage

## Déploiement Docker

Build the image:
```bash
docker build -t wedding-website .
```

Run the container:
```bash
docker run -d -p 8080:80 --name wedding-site wedding-website
```

## Déploiement GitHub Pages

L'action se charge de tout. Le repo GitHub doit être configuré pour accepter GitHub pages.