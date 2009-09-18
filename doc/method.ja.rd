=begin
= module Pgplot

== �⥸�塼��᥽�å�

=== ���
--- pgopen([device])
PGPLOT���å����򳫻Ϥ��롣����ͤȤ��ƥ��ơ��������֤���

--- pgbeg([device, [nxsub, [nysub]]])
(obsolete)
PGPLOT���å����򳫻Ϥ��롣����ͤȤ��ƥ��ơ��������֤���

--- pgask( [true|false] )

--- pgenv( xmin,xmax,ymin,ymax [,just, axis] )

=== �����ޡ���������
--- pgline( xarray, yarray )
xarray, yarray ��������������
xarray, yarray �Ϥ��줾�� X, Y ��ɸ������

--- pgpt( xarray, yarray [,symbol] )
xarray, yarray �ΰ��֤ˡ�symbol �Υޡ�����������

--- pgpnts( xarray, yarray, symarray )
xarray, yarray �ΰ��֤ˡ��б����� symarray �Υޡ����򤽤줾��������

=== �ҥ��ȥ����
--- pgbin( xarray, yarray [,center] )

--- pghist( data, nbin [,range, flag] )

=== ���顼�С�
--- pgerrb( dir, x, y, err [,tlen] )
���顼�С���������
tlen ��ü���������С���Ĺ������ꡣ
+ ��¦���顼�С�:
 * dir = 1 for +X (X to X+err)
 * dir = 2 for +Y (Y to Y+err)
 * dir = 3 for -X (X to X-err)
 * dir = 4 for -Y (Y to Y-err)
+ ξ¦���顼�С�:
 * dir = 5 for +/-X (X-err to X+err)
 * dir = 6 for +/-Y (Y-err to Y+err)

--- pgerrx( x1, x2, y [,tlen] )
x1 ���� x2 �ޤǤ��֥��顼�С���������
tlen ��ü���������С���Ĺ������ꡣ

--- pgerry( x, y1, y2 [,tlen] )
y1 ���� y2 �ޤǤ��֥��顼�С���������
tlen ��ü���������С���Ĺ������ꡣ

=== ������
--- pgcont( map, cont [,tr] )
map ��Ϳ�����������ޥåפ���������������
cont �ˤ��������Υ�٥�ޤ��Ϥ��������Ϳ���롣

--- pgcons( map, cont [,tr] )
PGCONT���®�����르�륺���������������ʡ�

--- pgconb( map, cont [,blank, tr] )
blank��Ϳ�����ͤ��»�ͤȤ�����������������

--- pgconf( map, cont_range [,tr] )
cont_range �� Range���饹���֥������Ȥ�Ϳ�����ϰϤΥ�٥���ɤ��٤���

--- pgconl( map, cont, label [,intval, minint, tr] )
�������˥�٥��Ĥ��롣

=== ����
--- pgimag( array [,range, tr] )
���顼��������� array (����������) �β�����������

--- pgctab( l, r,g,b [,contra,bright] )
pgimag �ǻ��Ѥ��륫�顼�ơ��֥�����ꤹ�롣

--- pggray( array [,range, tr] )
���졼��������� array (����������) �β�����������

--- pgpixl( array [,x1,x2,y1,y2] )
array (����������) �β�����Ĺ������pixel 1��1�Ĥ�������

--- pgvect( x, y [,scale, pos, tr, blank] )
�٥��ȥ���������

=== ��ɸ��������
--- pgtick( x1, y1, x2, y2, v, [str], {"tickl", "tickr", "disp", "orient"} )

--- pgaxis( x1, y1, x2, y2, v1, v2,
         {"opt", "step", "nsub", "tickl", "tickr", "frac", "disp", "orient"} )

=== ������������
--- pgcurs([x,y])
����å��ޤ��ϥ��������פΥ��٥�Ȥ�������롣
x,y ����ꤹ��ȻϤ�ˤ��ΰ��֤˥���������ư���롣
���٥�Ȥ���������
�����������(WC)��ʸ���� PgCursor���饹�Υ��󥹥��󥹤��֤���

--- pgband( mode, [ xref, yref, [x, y, [posn]]])
����å��ޤ��ϥ��������פΥ��٥�Ȥ�������롣
x,y ����ꤹ��ȻϤ�ˤ��ΰ��֤˥���������ư���롣
xref, yref �ϥ��󥫡����ΰ���(���)�ǡ���ά����ȸ��߰��֤Ȥʤ롣
���٥�Ȥ���������
�����������(WC)��ʸ���� PgCursor���饹�Υ��󥹥��󥹤��֤���
mode�ˤ�ꥫ�������������������ˡ�����Ǥ��롣
 * mode=0 : ����ʤ���
 * mode=1 : ���󥫡����ȥ��������������
 * mode=2 : ���󥫡����ȥ���������гѤȤ���Ĺ������
 * mode=3 : ���󥫡����ȥ���������֤��줾����̤룲�ܤο�ʿ����
 * mode=4 : ���󥫡����ȥ���������֤��줾����̤룲�ܤο�ľ����
 * mode=5 : ����������֤��̤��ʿ����
 * mode=6 : ����������֤��̤��ľ����
 * mode=7 : ����������֤��̤뽽������

--- pgolin( x, y, [sym, [npt]] )
�ޥ�����������Ǻ�ɸ��Ϣ³�������Ϥ��롣
x,y �ˤϤ��餫���� NArray::SFLOAT ���������Ϳ���Ƥ�����
�����إ���å��������֤˺�ɸ��Ͽ���Ƥ�����
���ϤǤ���Ŀ��Ϥ�������Υ����������¤���롣
������������Ϥ������ϡ��ޡ��� sym �����褵��롣
npt ����ꤹ��ȡ����餫���� npt �Ĥ��������Ϥ���Ƥ���Ȥߤʤ���
����ͤ����Ϥ������ο���

--- pgncur( x, y, [sym, [npt]] )
x,y�˵�Ͽ�������֤� x �ξ�������Ǥ��뤳�Ȥ������pgolin ��Ʊ����

--- pglcur( x, y, [npt] )
���Ϥ�������������������뤳�Ȥ�����ơ�pgolin ��Ʊ����

=== ���ơ��������֤�
--- pgqinf(item)
  value = pgqinf(item)

--- pgqdt([ndev])
  type, descr, inter = pgqdt([ndev])


=end
