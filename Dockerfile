FROM  node:22-alpine3.19

# สร้างโฟลเดอร์ใหม่ใน image ที่ชื่อว่า /usr/src/app
WORKDIR /usr/src/app

#  คัดลอกไฟล์ package.json และ package-lock.json 
COPY package*.json ./

# ติดตั้ง dependencies ใน package.json
RUN npm install

# คัดลอกไฟล์ทั้งหมด image
COPY . .

# คำสั่งที่จะรันเมื่อ image ถูกสร้าง
CMD ["npm", "start"]

# เปิดพอร์ต 3000
EXPOSE 3000

# สร้าง image โดยใช้คำสั่ง docker build
# docker build -t  devops-test .