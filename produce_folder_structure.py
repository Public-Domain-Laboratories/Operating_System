import os

def print_folder_tree(start_path='.', show_files=False, indent='', last='updown', file=None):
    items = sorted([item for item in os.listdir(start_path) if item != '.git'])
    if len(items) == 1 and items[0] == 'README.md':
        return

    for count, item in enumerate(items):
        path = os.path.join(start_path, item)
        connector = '└─ ' if count == len(items) - 1 else '├─ '
        if os.path.isdir(path):
            line = indent + connector + '📁 ' + item + '/'
            print(line)
            if file:
                file.write(line + '  \n')
            next_indent = indent + ('   ' if count == len(items) - 1 else '│  ')
            print_folder_tree(path, show_files, next_indent, 'updown' if count < len(items) - 1 else 'end', file)
        elif show_files:
            line = indent + connector + '📄 ' + item
            print(line)
            if file:
                file.write(line + '  \n')

if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser(description="Print folder tree")
    parser.add_argument('--show-files', action='store_true', help="Show files in the folder tree")
    args = parser.parse_args()

    with open('folder_structure.md', 'w', encoding='utf-8') as f:
        f.write('# Folder Structure\n\n')
        print_folder_tree(show_files=args.show_files, file=f)
