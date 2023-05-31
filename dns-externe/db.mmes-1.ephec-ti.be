$ORIGIN mmes-1.ephec-ti.be.
$TTL 3600      ; 1 hour
@       IN      SOA     ns.mmes-1.ephec-ti.be. he201974@students.ephec.be. (
                                1          ; serial -> incrémentemente de 1 à chaque modification
                                3600       ; refresh (1 hour)
                                3000       ; retry (50 minutes)
                                4619200    ; expire (7 weeks 4 days 11 hours 6 minutes 40 seconds)
                                604800     ; minimum (1 week)
                                )

@       IN      TXT      "v=spf1 ip4:172.17.0.4 ip4:172.17.0.1 ip4:51.254.96.106 -all"

; name server => RR de type NS
@       IN      NS      ns.mmes-1.ephec-ti.be.
@       IN      MX  10  mail

; name servers => RR de type A
@       IN      A       51.254.96.106
ns      IN      A       51.254.96.106

; service WEB
www     IN      A       51.254.96.106
b2b     IN      A       51.254.96.106

; Mail
mail    IN      A       51.254.96.106


_dmarc  IN      TXT     "v=DMARC1; p=reject; pct=100; rua=mailto:logan@mmes-1.ephec-ti.be"
      
mail._domainkey IN      TXT     ( "v=DKIM1; h=sha256; k=rsa; "
          "p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwCd1Yu0jLtsS6WNTZGalBnPwUiz+VSyqU2h3iDBEq1Z6af40W/fkbM2RHJqnA7eE6WKFzNyAZaGZ5ZhGI8zdwQ78yg6gQDIkI2hW41Ayd/lBBGdjLwgYZaraqr1zUBqZlhPgFxDCX62JbjzrhCHWc+/K9VnAv9xjt6shasvPwyaBkVm5FMWQuqla5ARNvVYFXmQNl18zNqh4C6"
          "9slqpW4FhvCgBH1pPupkTSq7h78t08ZjuuQH18nIMJPtBOl/5MEbAJzcHToLxWKm8T0mbfU5DI9qf+jL5ONH2/4l3QL/V+NwfrnAi5qEBXWtjEdL7lxu9QJNoLK4V+e8cTqArtswIDAQAB" )  ; ----- DKIM key mail for mmes-1.ephec-ti.be

$INCLUDE "/etc/bind/keys/Kmmes-1.ephec-ti.be.+008+63736.key";
$INCLUDE "/etc/bind/keys/Kmmes-1.ephec-ti.be.+008+53104.key";