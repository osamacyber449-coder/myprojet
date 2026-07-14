# 1. استخدام الصورة الأساسية
FROM nginx:alpine

# 2. تحديث النظام وحذف أداة curl تماماً لأننا لا نحتاجها وثغراتها كثيرة
RUN apk update && \
    apk upgrade --no-cache && \
    apk del curl --no-cache

# 3. نسخ ملفات مشروعك
COPY . /usr/share/nginx/html

# 4. فتح المنفذ
EXPOSE 80