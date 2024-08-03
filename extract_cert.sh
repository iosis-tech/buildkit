# Extract the client certificate
kubectl get secret buildkit-client-cert-secret -n iosis-tech-buildkit -o jsonpath="{.data.tls\.crt}" | base64 --decode > client-cert.pem

# Extract the client key
kubectl get secret buildkit-client-cert-secret -n iosis-tech-buildkit -o jsonpath="{.data.tls\.key}" | base64 --decode > client-key.pem

# Optionally, extract the CA certificate if it exists
kubectl get secret buildkit-client-cert-secret -n iosis-tech-buildkit -o jsonpath="{.data.ca\.crt}" | base64 --decode > client-ca.pem
