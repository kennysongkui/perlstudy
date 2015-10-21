use MIME::Lite;
use MIME::Words qw(encode_mimewords);

sub send_mail {
	
	my $self = shift;
	my $to_address = shift;
	
	my $subject = encode_mimewords("这里是中文标题",'Charset','GB2312');
	my $data =<<EOF;
<body>
<p>这里是中文HTML内容。</p>
</body>
EOF
	
	my $msg = MIME::Lite->new(
		From => 'you@example.com',
		To => $to_address,
		Subject => 'text/html',
		
	)
}
