FROM taf7lwappqystqp4u7wjsqkdc7dquw/grimdog_systemd
COPY src/root/usr/local/sbin/brutalflea.sh /usr/local/sbin
RUN chmod 0500 /usr/local/sbin/brutalflea.sh
COPY src/root/usr/lib/systemd/system/brutalflea.service /usr/lib/systemd/system
RUN systemctl enable brutalflea.service
CMD["/usr/bin/init"]
