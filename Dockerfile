FROM telegraf:1.9
COPY rund.sh rund.sh 
RUN sed -i 's/\r//' ./rund.sh && \
    chmod u+x rund.sh 
ENTRYPOINT [ "./rund.sh" ]