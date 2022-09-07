FROM ubuntu
RUN apt-get update -qq \
    && apt-get install -y \
    curl \
    nginx
# RUN echo lunch is ready, soon .... > /var/www/html/index.htm
COPY start.sh /
RUN chmod +x /start.sh
# ENV TITLE="Hello there"
# ENV COLOR=gray
# ENV BODY="Please use TITLE, COLOR and BODY env vars"
EXPOSE 80
CMD [ "/start.sh" ]