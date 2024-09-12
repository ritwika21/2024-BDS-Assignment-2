#!/usr/bin/env python

import sys

def main():
    unique_customers = set()
    total_quantity = 0
    for line in sys.stdin:
        line = line.strip()
        key, value = line.split('\t')
        if key == 'unique_customers':
            for customer_id in value.split(","):
                unique_customers.add(int(customer_id))
    
    print(f"number_of_unique_customers\t{len(unique_customers)}")

if __name__ == "__main__":
    main()