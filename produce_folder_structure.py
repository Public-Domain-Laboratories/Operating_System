import os

def print_folder_tree(start_path='.', indent='', last='updown', file=None):
    items = sorted([item for item in os.listdir(start_path) if item != '.git'])
    for count, item in enumerate(items):
        path = os.path.join(start_path, item)
        connector = '└─ ' if count == len(items) - 1 else '├─ '
        if os.path.isdir(path):
            line = indent + connector + '📁 ' + item + '/'
            print(line)
            if file:
                file.write(line + '\n')
            next_indent = indent + ('   ' if count == len(items) - 1 else '│  ')
            print_folder_tree(path, next_indent, 'updown' if count < len(items) - 1 else 'end', file)
        else:
            line = indent + connector + '📄 ' + item
            print(line)
            if file:
                file.write(line + '\n')

if __name__ == "__main__":
    with open('folder_structure.md', 'w', encoding='utf-8') as f:
        f.write('# Folder Structure\n\n')
        print_folder_tree(file=f)
