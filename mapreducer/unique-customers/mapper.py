#!/usr/bin/env python

import sys

def main():
    unique_customers = set()
    for line in sys.stdin:
        line = line.strip()
        fields = line.split(',')
        
        customer_id = fields[7]
        country = fields[8]
        if country == 'United Kingdom':
            unique_customers.add(customer_id)
        
    print(f"unique_customers\t{','.join(unique_customers)}")

if __name__ == "__main__":
    main()