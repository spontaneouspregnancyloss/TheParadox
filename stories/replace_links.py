import os
import glob

def replace_links_in_html_files(folder_path):
    """
    Replace 'href="stories/' with 'href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/'
    in all non-empty HTML files in the specified folder.
    """
    
    # Define the search and replace strings
    old_text = 'href="stories/'
    new_text = 'href="https://spontaneouspregnancyloss.github.io/TheParadox/stories/'
    
    # Check if folder exists
    if not os.path.exists(folder_path):
        print(f"Error: Folder '{folder_path}' does not exist.")
        return
    
    # Find all HTML files in the folder
    html_pattern = os.path.join(folder_path, "*.html")
    html_files = glob.glob(html_pattern)
    
    if not html_files:
        print(f"No HTML files found in '{folder_path}'")
        return
    
    print(f"Found {len(html_files)} HTML files")
    
    processed_files = 0
    skipped_blank_files = 0
    files_with_replacements = 0
    
    for file_path in html_files:
        try:
            # Read the file
            with open(file_path, 'r', encoding='utf-8') as file:
                content = file.read()
            
            # Skip blank or nearly blank files
            if not content.strip():
                print(f"Skipped (blank): {os.path.basename(file_path)}")
                skipped_blank_files += 1
                continue
            
            # Check if the old text exists in the file
            if old_text in content:
                # Replace the text
                updated_content = content.replace(old_text, new_text)
                
                # Write back to the file
                with open(file_path, 'w', encoding='utf-8') as file:
                    file.write(updated_content)
                
                # Count occurrences
                occurrences = content.count(old_text)
                print(f"Updated: {os.path.basename(file_path)} ({occurrences} replacements)")
                files_with_replacements += 1
            else:
                print(f"No changes needed: {os.path.basename(file_path)}")
            
            processed_files += 1
            
        except Exception as e:
            print(f"Error processing {os.path.basename(file_path)}: {str(e)}")
    
    # Summary
    print(f"\n--- Summary ---")
    print(f"Total HTML files found: {len(html_files)}")
    print(f"Files processed: {processed_files}")
    print(f"Blank files skipped: {skipped_blank_files}")
    print(f"Files with replacements: {files_with_replacements}")

if __name__ == "__main__":
    # Specify the folder path
    folder_path = r"C:\Users\mkepr\Documents\GitHub\TheParadox\stories"
    
    print("HTML Link Replacer")
    print("==================")
    print(f"Target folder: {folder_path}")
    print(f"Replacing: href=\"stories/")
    print(f"With: href=\"https://spontaneouspregnancyloss.github.io/TheParadox/stories/")
    print()
    
    # Ask for confirmation
    response = input("Proceed with replacement? (y/N): ")
    if response.lower() in ['y', 'yes']:
        replace_links_in_html_files(folder_path)
    else:
        print("Operation cancelled.")