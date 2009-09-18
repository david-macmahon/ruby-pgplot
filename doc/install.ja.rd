=begin
= PGPLOT�Υ��󥹥ȡ���

PGPLOT�� configure ��Ȥ�ʤ��Τǥ��󥹥ȡ��뤬�㴳���ݤǤ���
�ʲ��� Solaris��GCC �Ȥ����Ķ���PGPLOT�򥳥�ѥ��롢
���󥹥ȡ��뤹������������ޤ���
¾��OS�Ǥ�UNIX�ʤ�ۤȤ��Ʊ���褦�ˤ��ƥ��󥹥ȡ���Ǥ���Ȼפ��ޤ���
((<�ܲȤΥ��󥹥ȡ��������Υڡ���|URL:http://www.astro.caltech.edu/~tjp/pgplot/install.html>))
�⤴����������

=== PGPLOT�Υ��������Ѱ�
((<PGPLOT�Υ�����|URL:http://www.astro.caltech.edu/~tjp/pgplot/>))
����
((<������������|URL:ftp://ftp.astro.caltech.edu/pub/pgplot/pgplot5.2.tar.gz>))
���������ɡ�Ÿ������pgplot�Υǥ��쥯�ȥ�˰�ư���ޤ���

  gunzip -c pgplot5.2.tar.gz | tar xvf -
  cd pgplot

=== ��ȥǥ��쥯�ȥ�����
��ȥǥ��쥯�ȥ����ޤ��������Ǥ� build �Ȥ���̾���ˤ��ޤ���

  mkdir build
  cd build

=== drivers.list���Խ�
PGPLOT���������Ϥ���ɥ饤�Ф����򤷤ޤ���
drivers.list �Ȥ����ե�����򥳥ԡ����ƥ��ǥ����ǳ�����
�Ȥ������ɥ饤�ФιԤ�Ƭ�� ! ��ʸ���������ޤ���

  cp ../drivers.list .
  vi drivers.list

�ɥ饤�ФϤ����ߤ�����Ǥ��ޤ�����UNIX�ʤ�
PNG, PPM, Postscipt, XWD, XWINDOW, XSERVE, XTERM
�����������Ǥ����Τ�����Ū�Ǥ��礦��
PNG driver���Ȥ߹���ˤϡ�
((<libpng|URL:http://www.libpng.org/pub/png/png.html>)) ��ɬ�פǤ���
¾�ˤ⤿������Υɥ饤�Ф��ޤޤ�Ƥ��ޤ�����
�ץ�󥿥ɥ饤�Ф���ˤϥ���ѥ���λ��˥��顼���Ф��Τ����ä��ꡢ
GIF�ϥ饤���󥹤˰��óݤ��ä��ꤷ�ޤ���

=== makefile ����
���Υ��ޥ�ɤ� makefile ��������ޤ���
  ../makemake .. sol2 g77_gcc
1���ܤΰ����ϥ������Τ���ǥ��쥯�ȥ�λ���Ǥ���
�����Ǥϥ������ǥ��쥯�ȥ�β��ˤ���Τǡ�((%..%)) ����ꤷ�ޤ���
2���ܤΰ�����OS�μ���ǡ��������ǥ��쥯�ȥ�ˤ���
((%sys_*%)) �Ȥ����ǥ��쥯�ȥ����� ((%*%)) ����ʬ����ꤷ�ޤ���
3���ܤΰ����ϥ���ѥ���ʤɤ�����ǡ�sys_* �β��ˤ���
((%*.conf%)) �Ȥ����ե������ ((%*%)) ����ʬ����ꤷ�ޤ���
�⤷������ˤʤ���С��Ǥ�᤽���ʤ�Ĥ����Ӥޤ���

makefile ����������顢���äȸ������꤬�������������å����ޤ���
�����ǡ�PGPLOT ver 5.2.2 �� PNG driver��Ȥ���硢
�Ǥ��Ф��줿 makefile �ϡ�

  pndriv.o : ./png.h ./pngconf.h ./zlib.h ./zconf.h

�Ȥ����ޤ�������ˤʤäƤ���Τǡ����ιԤ������ޤ���

=== ����ѥ���
makefile ���Խ������顢�饤�֥��򥳥�ѥ��뤷�ޤ���

  make
  make cpg

=== ���󥹥ȡ���
make install ���Ѱդ���Ƥ��ʤ��Τǡ���ư�ǥ��ԡ����ޤ���
ɬ�פʤ� root �ˤʤäƤ���������
�ޤ����󥹥ȡ�����Υǥ��쥯�ȥ��Ķ��ѿ��˥��åȤ��ޤ���
csh�Ϥʤ顢

  setenv PREFIX  /usr/local
  setenv PGPLOT_DIR  ${PREFIX}/pgplot

���󥹥ȡ�����ϼ�ͳ�����٤ޤ�����
����ѥ�����˥ѥ����꤬ɬ�פˤʤ뤫�⤷��ޤ���
����ɬ�פʥե�����򥳥ԡ����ޤ���

  cp -p libpgplot.a libpgplot.so* libcpgplot.a ${PREFIX}/lib
  cp -p cpgplot.h ${PREFIX}/include
  mkdir ${PGPLOT_DIR}
  cp -p grfont.dat rgb.txt pgxwin_server ${PGPLOT_DIR}

����ǥ��󥹥ȡ��뽪λ�Ǥ���

=== �ǥ�μ¹�
����ѥ��뤬���ޤ����ä����ɤ����ǥ�ץ��������餻�Ƥߤޤ��礦��
����ѥ��뤷���ǥ��쥯�ȥ�� pgdemo1 ���� pgdemo17 �ޤǤ� cpgdemo
�Ȥ����¹ԥե����뤬�Ǥ��Ƥ���Ϥ��Ǥ���������¹ԤǤ����������
����ѥ��뤵��Ƥ���Ϥ��Ǥ���

=== �桼������
PGPLOT��Ȥ��桼���ϡ��Ķ��ѿ��ؼ������ꤷ�Ƥ����Ȥ褤�Ǥ��礦��
  setenv PGPLOT_DIR  /usr/local/pgplot
  setenv PGPLOT_DEV  /xwin
PGPLOT_DIR �Ͼ�ǥ��󥹥ȡ��뤷���ǥ��쥯�ȥ��Ʊ����
PGPLOT_DEV �ϥǥե���ȤΥǥХ����Ǥ���
����¾�δĶ��ѿ����ä����ꤷ�ʤ��Ƥ⤤���Ȼפ��ޤ������ܤ�����
((<����|URL:http://www.astro.caltech.edu/~tjp/pgplot/chapter1.html#ENV>))
������������

<<< trailer

=end
