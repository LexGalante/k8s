nginx-pod deploy:
	kubectl apply -f nginx.yml

nginx-pod destroy:
	kubectl delete pods nginx-pod

portal-noticias-wide:
	kubectl get pods -o wide

pod-exec-bash:
	kubectl exec -it pod-1 -- bash

portal-up:
	kubectl apply -f ./portal-noticias/pod-portal-noticias.yml
	kubectl apply -f ./portal-noticias/svc-portal-noticias.yml

portal-down:
	kubectl delete -f ./portal-noticias/svc-portal-noticias.yml
	kubectl delete -f ./portal-noticias/pod-portal-noticias.yml

portal-history:
	kubectl rollout history deployment portal-noticias