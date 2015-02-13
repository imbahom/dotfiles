#!/usr/bin/env sh


# Description~
# The full path to an user-provided script that converts a wiki page to HTML.
# Vimwiki calls the provided |vimwiki-option-custom_wiki2html| script from the
# command-line, using '!' invocation.

# The following arguments, in this order, are passed to the
# |vimwiki-option-custom_wiki2html| script:

# 1. force : [0/1] overwrite an existing file
# 2. syntax : the syntax chosen for this wiki
# 3. extension : the file extension for this wiki
# 4. output_dir : the full path of the output directory, i.e. 'path_html'
# 5. input_file : the full path of the wiki page
# 6. css_file : the full path of the css file for this wiki
# 7. template_path : the full path to the wiki's templates
# 8. template_default : the default template name
# 9. template_ext : the extension of template files

echo $6
outputFileName=`basename -s .$3 $5`
pandoc $5 -o $4$outputFileName.html -c $6
