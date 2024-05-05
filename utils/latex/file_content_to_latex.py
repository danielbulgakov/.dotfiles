import os
import sys

def convert_to_latex(directory):
    latex_content = ""
    
    for root, _, files in os.walk(directory):
        for file in files:
            if file.endswith('.py'):
                file_path = os.path.join(root, file)
                relative_path = os.path.relpath(file_path, directory)
                label = relative_path.replace('/', '_').replace('.', '_')
                # Используем \detokenize для обработки пути к файлу как обычного текста
                latex_content += "\\lstinputlisting[caption={\\detokenize{" + relative_path + "}}, label={" + label + "}]{" + file_path + "}\n"
    
    return latex_content

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python script.py <directory_path> <output_tex_file>")
        sys.exit(1)
    
    directory_path = sys.argv[1]
    output_tex_file = sys.argv[2]
    
    latex_content = convert_to_latex(directory_path)
    
    with open(output_tex_file, 'w') as output_tex:
        output_tex.write(latex_content)

