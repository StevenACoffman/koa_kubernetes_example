# koa_kubernetes_example
Simple Kubernetes Koa2 Node.js application

Run this locally in docker:
```bash
docker run -p 8888:8888 stevenacoffman/koa_kubernetes_example
```

Apply this to your Kubernetes cluster (Note: cluster not included):
```bash
kubectl apply -f koa-example.yaml
```

Todo: Add prometheus monitoring
