FROM rfhk/odoo:15.0
LABEL maintainer = "Quartile Limited <info@quartile.co>"

# Switch back to root since 'odoo' is set in the rfhk/odoo image.
USER root

# Install Odoo Python dependencies (Custom)
ADD requirements.txt /opt/custom_requirements.txt
RUN pip install -r /opt/custom_requirements.txt
