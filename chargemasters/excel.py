from openpyxl import load_workbook
from xlrd import open_workbook


def load_my_workbook(ext, f):

    if ext == 'xlsx':
        return load_workbook(f)

    if ext == 'xls':
        return open_workbook(f)


def name_has_something_common(name):
    if 'Common' in name or 'COMMON' in name:
        return True
    if 'AB 1045' in name:
        return True
    if 'Top 25' in name or 'TOP 25' in name:
        return True
    return False

def sheet_names(ext, wbook):
    if ext == 'xlsx':
        return wbook.sheetnames
    if ext == 'xls':
        raise Exception("what")


# Find the "Common25" sheet, acitvate it (however) and return the sheet.
#
def common25_sheet(ext, wbook):

    if ext == 'xlsx':
        for found_name in wbook.sheetnames:
            if name_has_something_common(found_name):
                wbook.active = wbook[found_name]
                return wbook[found_name]

    if ext == 'xls':
        for found_name in wbook.sheet_names():
            if name_has_something_common(found_name):
                return wbook.sheet_by_name(found_name)

    return None


def only_sheet(ext, wbook):
    if ext == 'xlsx':
        return wbook.active
    if ext == 'xls':
        return wbook.sheet_by_index(0)
    return None


cols = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H']


def find_column_heads(ext, ws):

    if ext != 'xlsx':
        return None

    found = None

    for row in range(10):
        for col in cols:

            key = f"{col}{(row+1)}"

            if ws[key].value is None:
                continue

            ok = False

            ok |= str(ws[key].value).endswith('CPT Code')

            ok |= str(ws[key].value).endswith('CPT CODE')

            ok |= str(ws[key].value).endswith('ChargeCode')

            if ok:
                found = {'CPT Code': {'row': row+1, 'col': col}}

                prevCol = cols[cols.index(col) - 1]
                found['Procedure'] = {'row': row+1, 'col': prevCol}

                nextCol = cols[cols.index(col) + 1]
                found['Cost'] = {'row': row+1, 'col': nextCol}

    return found


def cell_value(ext, ws, key):
    if ext == 'xlsx':
        return ws[key].value

    return None


def cell_value_str(ext, ws, key):

    if ext == 'xlsx':
        if ws[key].value is None:
            return None
        else:
            return str(ws[key].value)

    if ext == 'xls':
        row = key[1:]
        col = key[0]
        if ws.cell_value(row, col) is None:
            return None
        else:
            return str(ws.cell_value(row, col))

    return None

