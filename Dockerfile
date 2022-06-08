FROM rfhk/odoo:15.0
LABEL maintainer = "Quartile Limited <info@quartile.co>"

# Install Odoo Python dependencies (Custom)
ADD requirements.txt /opt/custom_requirements.txt
RUN pip install -r /opt/custom_requirements.txt
