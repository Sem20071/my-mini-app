# Клонирование репозитория
git clone https://github.com/prometheus-operator/kube-prometheus
cd kube-prometheus

# Создание пространства имён и CRD
kubectl apply --server-side -f manifests/setup

# Ожидание инициализации CRD
kubectl wait --for condition=Established --all CustomResourceDefinition --namespace=monitoring

# Развертывание всех компонентов
kubectl apply -f manifests/

cd ../
# Настраиваем сервис для доступа к garafana 
kubectl apply -f grafana-config.yaml
# # Развертывание мини приложения и сервиса для доступа к нему.
kubectl apply -f deployment-my-app.yaml