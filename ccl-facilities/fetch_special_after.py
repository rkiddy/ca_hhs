
if __name__ == '__main__':

    name1 = '24-hour-residential-care-for-children.csv'
    name2 = '24-hour-residential-care-for-children-fixed.csv'

    fixed = open(name2, 'w')

    first = True

    with open(name1, 'r') as f1:

        for line in f1:

            if first:
                parts = line.split(',')
                fixed.write(f"{','.join(parts[:17])}\n")
                first = False
                continue

            fixed.write(line)

    fixed.close()

    print("\n24-hour-residential-care-for-children.csv file fixed, extra columns removed.\n")

