This is an simple Julia program, used to recursively replace the specific content of all files in the folder.

+ `workpath`: We will recursively replace all files under the path.
+ `how_to_replace`: The replace rule which is a `Pair{String,String}`. Just like `"a" => "b"`, we will replace a with b
+ `if path_to_the_file[end-4:end] == ".html"`: in line 16, it only replace the file whose name ends with `.hmtl`

---

这是一个简单的Julia程序，用来递归地替换一个文件夹下所有文件的特定内容

+ `workpath`: 将会递归地替换该路径下所有文件
+ `how_to_replace`: 替换规则，以一个键值对的形式提供，例如`"a" => "b"`，将会用b来替换a
+ `if path_to_the_file[end-4:end] == ".html"`: 在程序的第16行，只会对文件名以`.html`的文件进行替换操作