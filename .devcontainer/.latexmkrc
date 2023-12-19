$latex = 'internal mylatex uplatex %A %O %S';
$bibtex = 'pbibtex %O %B';
$dvipdf = 'dvipdfmx %O -o %D %S';
$makeindex = 'mendex %O -o %D %S';
$max_repeat = 10;
$pdf_mode = 3;

# https://tasusu.hatenablog.com/entry/2022/04/07/044634
sub mylatex {
    my ($engine, $base, @args) = @_;
    my $com = join(' ', @args);
    unless (-e "$base.fmt"){
        print "mylatex: making $base.fmt in ini mode... \n";
        Run_subst("$engine -ini -jobname=\"$base\" \\\&$engine mylatexformat.ltx %S");
    }
    print "mylatex: $base.fmt detected, so running normal latex... \n";
    return Run_subst("$engine -fmt $base $com");
}
