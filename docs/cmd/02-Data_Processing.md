


    ls -l
    ls ..
    pwd
    ls -las | less
    mkdir tutorial
    cd tutorial/
    ls -las
    touch filename
    ls -las
    cat filename 
    echo "" > filename
    ls -la
    cat filename 
    rm filename 
    ls -l
    touch filename
    mkdir sub-directory
    rmdir sub-directory/
    mkdir sub-directory
    ls -l
    touch sub-directory/newfile
    rmdir sub-directory/
    rm sub-directory/newfile 
    rmdir sub-directory/
    mkdir sub-directory
    touch sub-directory/newfile
    touch sub-directory/newfile2
    touch sub-directory/newfile3
    touch sub-directory/newfile4
    ls -l sub-directory/
    rm -r sub-directory/
    ls -l
    rm -r
    ls -l
    mv filename new-filename
    ls -l
    mkdir sub-directory
    mv new-filename sub-directory/
    ls -l
    ls -l sub-directory/
    mv sub-directory/new-filename back_here
    ls -l
    ls -lR
    touch sub-directory/testing2
    ls -lR
    find .
    find sub-directory/
    find . -name 'test'
    find . -name '*test*'
    find . -name 'test*'
    find . -name 't*'
    find . -name '*2'
    clear
    ls -l back_here 
    history
    module avail
    module add tabutils
    tabutils 
    module
    cd /asclab/projects/spcg/
    ls -l
    cd reports/
    ls -l
    cd snvs/
    ls -l
    ls -lh
    cd /asclab/projects/spcg/reports/snvs/
    ls -lh
    tabutils 
    cat SPCG-UCPG.mutect.filtered.annotated.txt.gz | less
    tabutils less SPCG-UCPG.mutect.filtered.annotated.txt.gz 
    ps
    ps eax
    ps eaxu 
    ps eaxu  | cs
    ps eaxu  | grep cs
    tabutils less SPCG-UCPG.mutect.filtered.annotated.txt.gz 
    gunzip 
    gunzip  -help
    gunzip -c SPCG-UCPG.mutect.filtered.annotated.txt.gz | grep -v '^#' | less
    gunzip -c SPCG-UCPG.mutect.filtered.annotated.txt.gz | grep -v '^#' | less -S 
    gunzip -c SPCG-UCPG.mutect.filtered.annotated.txt.gz | grep -v '^#' | tabutils less
    gunzip -c SPCG-UCPG.mutect.filtered.annotated.txt.gz | grep -v '^#' | grep 'OS    | tabutils less
    cd /asclab/projects/spcg/subjects/*186
    ls -l
    cd SPCG-OS186_6G_14M
    pwd
    cd /asclab/projects/spcg/subjects/*186/*G_14M
    ls -l
    ps -eax
    ps -eaxu |  cs
    ps -eaxu |  grep cs
    pwd
    cd /asclab/projects/spcg/subjects/*186/*G_14M
    ls -l
    ls -l /asclab/projects/spcg/subjects/
    ls -l /asclab/projects/spcg/subjects/ | less
    ls -l
    pwd
    ls -l
    ls 
    ls -l 
    cd variants
    ls -l
    pwd
    tabutils less *txt.gz
    ls *txt.gz
    cat SPCG-OS186_6G_14M.mutect.filtered.tstv.txt
    cat *tstv.txt
    less SPCG-OS186_6G_14M.mutect.filtered.annotated.bed
    tabutils less SPCG-OS186_6G_14M.mutect.filtered.annotated.txt.gz
    gunzip -c SPCG-OS186_6G_14M.mutect.filtered.annotated.txt.gz | less
    gunzip -c SPCG-OS186_6G_14M.mutect.filtered.annotated.txt.gz | grep -v '^#' | less
    gunzip -c SPCG-OS186_6G_14M.mutect.filtered.annotated.txt.gz | grep -v '^#' | wc 
    gunzip -c SPCG-OS186_6G_14M.mutect.filtered.annotated.txt.gz | grep -v '^#' | wc -l
    gunzip -c SPCG-OS186_6G_14M.mutect.filtered.annotated.txt.gz | grep -v '^#' | grep 'EXON' | tabutils less
    gunzip -c SPCG-OS186_6G_14M.mutect.filtered.annotated.txt.gz | grep -v '^#' | grep 'EXON' | wc -l
    gunzip -c SPCG-OS186_6G_14M.mutect.filtered.annotated.txt.gz | grep -v '^#' | grep 'EXON' | grep 'HIGH' | tabutils less
    gunzip -c SPCG-OS186_6G_14M.mutect.filtered.annotated.txt.gz | grep -v '^#' | grep 'EXON' | grep 'CANCER' | tabutils less
    tabutils less SPCG-OS186_6G_14M.mutect.filtered.annotated.txt.gz
    gunzip -c SPCG-OS186_6G_14M.mutect.filtered.annotated.txt.gz | grep -v '^#' | less -S
    cat *tstv.txt
    grep Ts *tstv.txt
    grep EXON *txt.gz
    gunzip -c SPCG-OS186_6G_14M.mutect.filtered.annotated.txt.gz | grep -v '^#' | tabutils less 
    gunzip -c SPCG-OS186_6G_14M.mutect.filtered.annotated.txt.gz | grep -v '^#' | awk '{print $1}' | less
    gunzip -c SPCG-OS186_6G_14M.mutect.filtered.annotated.txt.gz | grep -v '^#' | awk '{print $1}' | uniq
    gunzip -c SPCG-OS186_6G_14M.mutect.filtered.annotated.txt.gz | grep -v '^#' | awk '{print $1}' | uniq -c
    gunzip -c SPCG-OS186_6G_14M.mutect.filtered.annotated.txt.gz | grep 'TP53' | less
    gunzip -c SPCG-OS186_6G_14M.mutect.filtered.annotated.txt.gz | grep 'TP53' | tabutils less
