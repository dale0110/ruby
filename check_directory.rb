
require 'find'
 

def traverse_dir(file_path)
    if File.directory? file_path
        Dir.foreach(file_path) do |file|
            if file !="." and file !=".."
                traverse_dir(file_path+"/"+file)
            end
        end
    else
        puts "File:#{File.basename(file_path)}, Size:#{File.size(file_path)}"
    end
end


Find.find('D:\odl-controller') do |path|
    if path.include? ".java"
        if path.length > 200
            puts path
            puts path.length
        end
    end
end
