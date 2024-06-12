1. ติดตั้ง minicube![1718210311444](images/minikube_answer/1718210311444.png)
2. คำสั่งเริ่ม minikube start![1718210390879](images/minikube_answer/1718210390879.png)
3. docker push เพื่อเข้าใช้งาน docker repository
4. สร้าง deployment ชื่อ devops-test: kubectl create deployment devops-test --image=0800911680/kubernetes:devtest

   ![1718211387021](images/minikube_answer/1718211387021.png)
5. สร้าง nodeport: kubectl expose deployment devops-test --type=NodePort --port=3000![1718211534225](images/minikube_answer/1718211534225.png)
6. forward port เพื่อทดสอบ: kubectl port-forward service/devops-test 3000:3000

   ![1718211647792](images/minikube_answer/1718211647792.png)
7. เช็ค error จาก dashbord![1718211757489](images/minikube_answer/1718211757489.png)
8. ทดสอบ request method get ไปที่ http://localhost:3000
