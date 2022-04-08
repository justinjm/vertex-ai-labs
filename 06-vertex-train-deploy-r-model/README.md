# Train and Deploy R Model

(placeholder for additional details)


## Steps

### Setup

1. Setup environment 
2. get data from source (gist/bank marketing data) and load to GCS 

### Training

3. prepare data
4. train model 

### Deployment

5. create build image 
6. upload to container registry
7. create model resource from custom serving container 
8. create endpoint 
9. send online prediction request 


## Source Data

[Bank marketing - Dataset - DataHub - Frictionless Data](https://datahub.io/machine-learning/bank-marketing#data)

bank client data:
1 - age (numeric)
2 - job : type of job (categorical: "admin.","unknown","unemployed","management","housemaid","entrepreneur", "student","blue-collar","self-employed","retired","technician","services")
3 - marital : marital status (categorical: "married","divorced","single"; note: "divorced" means divorced or widowed)
4 - education (categorical: "unknown","secondary","primary","tertiary")
5 - default: has credit in default? (binary: "yes","no")
6 - balance: average yearly balance, in euros (numeric)
7 - housing: has housing loan? (binary: "yes","no")
8 - loan: has personal loan? (binary: "yes","no")
related with the last contact of the current campaign:
9 - contact: contact communication type (categorical: "unknown","telephone","cellular")
10 - day: last contact day of the month (numeric)
11 - month: last contact month of year (categorical: "jan", "feb", "mar", ..., "nov", "dec")
12 - duration: last contact duration, in seconds (numeric)
other attributes:
13 - campaign: number of contacts performed during this campaign and for this client (numeric, includes last contact)
14 - pdays: number of days that passed by after the client was last contacted from a previous campaign (numeric, -1 means client was not previously contacted)
15 - previous: number of contacts performed before this campaign and for this client (numeric)
16 - poutcome: outcome of the previous marketing campaign (categorical: "unknown","other","failure","success")
output variable (desired target):
17 - y - has the client subscribed a term deposit? (binary: "yes","no")