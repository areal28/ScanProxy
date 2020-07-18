#! / usr / xbim / bash
p = " \ 033 [39; 1m "
m = " \ 033 [31; 1 m "
h = " \ 033 [32; 1 m "

bersih
 spanduk fungsi () {
		echo -e " \ t $ {p} _________________________ "
		echo -e " \ t $ {h}   ALAT PEMINDAI PROXY "
		echo -e " \ t $ {p}    Penulis $ {m} : $ {p} Mr.Tr3v! 0n "
		echo -e " \ t $ {p}     Black Coder Crush "
		echo -e " \ t $ {p} Telegram $ {m} : $ {p} @config_geratis "
		echo -e " \ t $ {p} _________________________ "
	   	echo -e " \ t $ {p} Shodan.io | Versi: 1.0 \ n \ n "
}
spanduk

function  sec () {
		printf  " \ t \ b $ {p} [ $ {h} • $ {p} ] Cheking Proxy $ {m} :     $ {p} "
			untuk  w  di {3..0} ; melakukan
			dapatkan = $ ( printf " \ b $ {w} " )
		printf  " \ b \ b \ b (( $ {h} $ {get} $ {p} ) "
			tidur 1
		selesai
}

printf  " \ t $ {p} [ $ {h} • $ {p} ] PROXY YOU? $ {m} : $ {p} "
baca proksi ;

	jika \
	[[\
	$ {proxy} \
	= ~ \
	[0-9] \
	]] ; kemudian
		detik
	json = $ ( curl \
	-s \
	" https://api.shodan.io/shodan/host/ { $ {proxy} }? key = {OZi7Lq6PPz8B15jO1nFa1Hagt5NulEBI} " )
	
	host = $ ( echo \
	$ json \
	| \
	jq ". data |. [] | .http.host "  | \
	sed \
	-e ' s / "// g ' \
	| \
	awk \
	{ ' print "\ 033 [39; 1m [\ 033 [32; 1m • \ 033 [39; 1m] Proxy \ 033 [31; 1m: \ 033 [32; 1m" $ 1, $ 2 ' } )
	port = $ ( echo \
	$ json \
	| \
	jq \
	". data |. [] | .port " \
	| \
	awk \
	{ ' print "\ 033 [39; 1m [\ 033 [32; 1m • \ 033 [39; 1m] Port \ 033 [31; 1m: \ 033 [32; 1m" $ 1, $ 2 ' } )
	data = $ ( echo \
	$ json \
	| \
	jq \
	". data |. [] |. data " \
	| \
	grep \
	-Eo \
	" HTTP. * "  | \
	memotong \
	-d \
	" \\ " \
	-f1 | \
	awk \
	{ ' print "\ 033 [39; 1m [\ 033 [32; 1m • \ 033 [39; 1m] Status \ 033 [31; 1m: \ 033 [32; 1m" $ 1, $ 2 ' } )
	server = $ ( echo \
	$ json \
	| \
	jq \
	". data |. [] | .http.server " \
	| \
	sed \
	-e \
	' s / "// g ' \
	| \
	awk \
	{ ' print "\ 033 [39; 1m [\ 033 [32; 1m • \ 033 [39; 1m] Server \ 033 [31; 1m: \ 033 [32; 1m" $ 1, $ 2 ' } )
	produk = $ ( gema \
	$ json \
	| \
	jq \
	". data |. [] | .produk " \
	| \
	sed \
	-e \
	' s / "// g ' )
	asn = $ ( echo \
	$ json \
	| \
	jq \
	". data |. [] | .asn " \
	| \
	sed \
	-e \
	' s / "// g ' \
	| \
	awk \
	{ ' print "\ 033 [39; 1m [\ 033 [32; 1m • \ 033 [39; 1m] ASN \ 033 [31; 1m: \ 033 [32; 1m" $ 1, $ 2 ' } )
	transport = $ ( echo \
	$ json \
	| \
	jq \
	". data |. [] | .transport " )
	title_status = $ ( echo \
	$ json \
	| \
	jq \
	". data |. [] | .http.title " )
	isp = $ ( echo \
	$ json \
	| \
	jq \
	". data |. [] | .isp " \
	| \
	sed \
	-e \
	' s / "// g ' \
	| \
	awk \
	{ ' print "\ 033 [39; 1m [\ 033 [32; 1m • \ 033 [39; 1m] ISP \ 033 [31; 1m: \ 033 [32; 1m" $ 1, $ 2 ' } )
	total_data = $ ( echo \
	$ json \
	| \
	jq \
	". data |. [] "  | \
	grep \
	-c " http: \" : " )
	
	echo -e " \ n \ n $ host "
	echo -e " \ n $ port "
	echo -e " \ n $ data "
	echo -e " \ n $ asn "
	echo -e " \ n $ server "
	echo -e " \ n $ isp "
	
	lain 
		echo -e " \ t $ {p} [ $ {m} ! $ {p} ] Proxy Salah $ {m} !! "
		keluar 1
	fi
