FROM rfhk/odoo:15.0
LABEL maintainer = "Quartile Limited <info@quartile.co>"

# Switch back to root since 'odoo' is set in the rfhk/odoo image.
USER root

# Install Odoo Python dependencies (Custom)
ADD requirements.txt /opt/custom_requirements.txt
RUN pip install -r /opt/custom_requirements.txt

# Add ISRG Root X2, which the CA bundle of the base image (Debian 11,
# ca-certificates 20210119) lacks; needed to verify xchangemarketb2b.com
COPY isrg-root-x2.pem /usr/local/share/ca-certificates/isrg-root-x2.crt
RUN update-ca-certificates
