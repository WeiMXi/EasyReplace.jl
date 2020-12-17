
# workpath = "C:\\Users\\WeiM\\OneDrive - mail2.sysu.edu.cn\\hugo blog\\v2doc\\public"
# 要替换的文件夹所在的目录，将递归地替换该文件夹下所有文件
workpath = "../v2doc/public/"
# 替换前与替换后的内容
how_to_replace = """<a class="padding" href='/'><i class='fas fa-home'></i> Home</a>""" => """<a class="padding" href='/qiaomimi/v2doc/'><i class='fas fa-home'></i> Home</a>"""



for (root, dirs, files) in walkdir(workpath)

    for file in files
        # 将文件转换为绝对路径
        path_to_the_file = String(joinpath(root, file))
        # 对符合后缀的文件进行修改
        if path_to_the_file[end-4:end] == ".html"
            # 将目标文件内容全部读入内存
            all_text = read(path_to_the_file, String)
            # 只有目标文件含有字符时才会替换
            if occursin(how_to_replace[1], all_text)
                # 替换内容
                all_text = replace(all_text, how_to_replace)
                # 清空并写入文件
                the_opened_file = open(path_to_the_file, "w")
                write(the_opened_file, all_text)
                close(the_opened_file)
                println("$path_to_the_file ||| replaced!")
            else
                println("$path_to_the_file ||| nothing to replace!")
            end 
        end
    end
end
