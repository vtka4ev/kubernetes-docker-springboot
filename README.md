# kubernetes-docker-springboot
kubernetes + docker + springboot simple app

Prerequisites:
1. Java 
2. Docker
3. Gradle
4. Minikube - for local deployment

Build java app:
    gradle wrapper && gradle :bootJar 
 
Build local docker image(for run in Docker - not in Kubernetes): 
    docker image build -t spring_boot . && docker container run -d  -p 8080:8080 spring_boot

Kubernetes local(Minikube) deployment:
1. Build docker image inside minikube:
    eval $(minikube docker-env)
    docker image build -t spring_boot .
2. Create Replication Controller and Service    
    kubectl create -f Kubernetes/minikube/rc.yml && kubectl create -f Kubernetes/minikube/svc.yml
3. Check 
    curl "$(minikube ip)":30555 