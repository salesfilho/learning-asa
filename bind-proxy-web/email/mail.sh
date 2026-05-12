#!/bin/bash

useradd -c 'alcivan' -m -s /bin/false alcivan
echo "alcivan:123456"|chpasswd

useradd -c 'sales' -m -s /bin/false sales
echo "sales:123456"|chpasswd