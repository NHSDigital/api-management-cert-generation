import csv


# First we create configs
## Read in config templatoe
with open("conf.template", "r") as f:
    template = f.read()

## Then we read in the domains we need to generate configs for
with open("domains-with-cnames.csv", 'r') as csvfile:
    reader = csv.reader(csvfile)

    for nhs_domain, apigee_domain in reader:
        with open(f"confs/{nhs_domain}.conf", "w") as f:
            f.write(
                template.format(nhs_domain=nhs_domain, apigee_domain=apigee_domain)        
            )
        
