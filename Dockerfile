FROM frappe/erpnext:v15.26.1

USER root

RUN mkdir -p /home/frappe/frappe-bench/sites
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
