# Deploy Application to EC2 with AWS CodePipeline

#### Cấu hình file .env về database **RDS**

```
DB_HOST="ENDPOINT RDS"
DB_NAME="Database name"
DB_USER="Database user"
DB_PASS="Dabase password"
```

Bạn tham khảo cách kết nối từ EC2 đến RDS:

```
#!/bin/bash
DB_HOST="aws-fcj-management.ctptlqdaofe0.ap-southeast-1.rds.amazonaws.com";
DB_NAME="usermgt"
DB_USER="admin"
DB_PASS="awsfcjAWSFCJ"

mysql --version

mysql -h $DB_HOST -u $DB_USER -p$DB_PASS -D $DB_NAME  -P 3306;

CREATE DATABASE test;
USE test;
CREATE TABLE `test`.`user`
  (
     `id`         INT NOT NULL auto_increment,
     `first_name` VARCHAR(45) NOT NULL,
     `last_name`  VARCHAR(45) NOT NULL,
     `email`      VARCHAR(45) NOT NULL,
     `phone`      VARCHAR(45) NOT NULL,
     `comments`   TEXT NOT NULL,
     `status`     VARCHAR(10) NOT NULL DEFAULT 'active',
     PRIMARY KEY (`id`)
  )
engine = innodb;
INSERT INTO `user`
            (`id`,
             `first_name`,
             `last_name`,
             `email`,
             `phone`,
             `comments`,
             `status`)
VALUES      (NULL,
             'Amanda',
             'Nunes',
             'anunes@ufc.com',
             '012345 678910',
             'I love AWS FCJ',
             'active'),
            (NULL,
             'Alexander',
             'Volkanovski',
             'avolkanovski@ufc.com',
             '012345 678910',
             'I love AWS FCJ',
             'active'),
            (NULL,
             'Khabib',
             'Nurmagomedov',
             'knurmagomedov@ufc.com',
             '012345 678910',
             'I love AWS FCJ',
             'active'),
            (NULL,
             'Kamaru',
             'Usman',
             'kusman@ufc.com',
             '012345 678910',
             'I love AWS FCJ',
             'active'),
            (NULL,
             'Israel',
             'Adesanya',
             'iadesanya@ufc.com',
             '012345 678910',
             'I love AWS FCJ',
             'active'),
            (NULL,
             'Henry',
             'Cejudo',
             'hcejudo@ufc.com',
             '012345 678910',
             'I love AWS FCJ',
             'active'),
            (NULL,
             'Valentina',
             'Shevchenko',
             'vshevchenko@ufc.com',
             '012345 678910',
             'I love AWS FCJ',
             'active'),
            (NULL,
             'Tyron',
             'Woodley',
             'twoodley@ufc.com',
             '012345 678910',
             'I love AWS FCJ',
             'active'),
            (NULL,
             'Rose',
             'Namajunas ',
             'rnamajunas@ufc.com',
             '012345 678910',
             'I love AWS FCJ',
             'active'),
            (NULL,
             'Tony',
             'Ferguson ',
             'tferguson@ufc.com',
             '012345 678910',
             'I love AWS FCJ',
             'active'),
            (NULL,
             'Jorge',
             'Masvidal ',
             'jmasvidal@ufc.com',
             '012345 678910',
             'I love AWS FCJ',
             'active'),
            (NULL,
             'Nate',
             'Diaz ',
             'ndiaz@ufc.com',
             '012345 678910',
             'I love AWS FCJ',
             'active'),
            (NULL,
             'Conor',
             'McGregor ',
             'cmcGregor@ufc.com',
             '012345 678910',
             'I love AWS FCJ',
             'active'),
            (NULL,
             'Cris',
             'Cyborg ',
             'ccyborg@ufc.com',
             '012345 678910',
             'I love AWS FCJ',
             'active'),
            (NULL,
             'Tecia',
             'Torres ',
             'ttorres@ufc.com',
             '012345 678910',
             'I love AWS FCJ',
             'active'),
            (NULL,
             'Ronda',
             'Rousey ',
             'rrousey@ufc.com',
             '012345 678910',
             'I love AWS FCJ',
             'active'),
            (NULL,
             'Holly',
             'Holm ',
             'hholm@ufc.com',
             '012345 678910',
             'I love AWS FCJ',
             'active'),
            (NULL,
             'Joanna',
             'Jedrzejczyk ',
             'jjedrzejczyk@ufc.com',
             '012345 678910',
             'I love AWS FCJ',
             'active');
exit;

if [[ $? -eq 0 ]]; then
    echo "MySQL connection: OK";
else
    echo "MySQL connection: Fail";
fi
```
### AWS-DeployECS 
- Sử dụng để deploy application with ECS Fargate
- Deployment Blue/Green

### AWS-FCJ-Management 

- Application Nodejs
- Database: RDS - MySQL.
- Run: Node and NPM, PM2.

###n Container

- Docker application
- Docker Compose
- ECR
- Git - CodeBuild - CodeDeploy.

### Deloyment script
- Lifecycle Hook deployment EC2/On-Premise instance.
- Install CodeDeploy Agent

### Code Build And Code Deploy

- appspec.yml
- buildspec.yml

To be continue....
