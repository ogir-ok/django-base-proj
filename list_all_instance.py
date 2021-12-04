#!/usr/bin/env python3

import boto3

AWS_REGION = "us-east-2"
EC2_RESOURCE = boto3.resource('ec2', region_name='us-east-1')

instances = EC2_RESOURCE.instances.all()


def list_instanc():
    for instance in instances:

        print(f'Piblic IPv4 address: {instance.public_ip_address}')
        print('-' * 60)


if __name__ == '__main__':
    list_instanc()
