Tittle: How to setup MariaDB/MySQL Galera Cluster using ansible

Developed by: Gerard K Kipng'ok

Date: 06th June 2024

Prerequisites:

➔ Two or more fresh ubuntu nodes 

➔ Ansible machine’s able to ssh cluster nodes

➔ Ports: 3306/tcp,4567/tcp,4568/tcp,4444/tcp, 4567/udp

Note:This is Active-active cluster, where every node is read-write and a change made to one is replicated to all.

Setup:

    ✓Install the galera cluster role: (On Ansible controller node)
    ansible-galaxy install eradical.ansible_mariadb_galera_cluster

    ✓Install mysql community role: (On Ansible controller node)
    ansible-galaxy collection install community.mysql

Create below yml file inside your direcrory e.g /home/gkipngok/ansible-mariadb-galera

    ✓main.yml and ✓inventory.ini

Copy what you have in the repo to the respective yml & ini files
Update your IPs in ✓main.yml and ✓inventory.ini

Run Ansible-playbook:

	ansible-playbook main.yml -i inventory.ini

✓Test Execution:

Creating database and inserting data into dB to verify that replication is working 
fine from different node’s perspective

Creating database on Node_1:

	create database galeratest;

insert some data into galeratest database from Node_1:
    
	INSERT INTO person (first_name, last_name) VALUES ('John', 'Doe');

Verifying on Node_2:

	select * from person;

You can do the vice versa as well.

Hurray your MariaDB/MySQL Galera Cluster using ansible is up!!!
