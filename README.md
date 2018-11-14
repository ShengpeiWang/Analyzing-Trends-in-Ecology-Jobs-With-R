<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head>

<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="generator" content="pandoc">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="data:text/css;charset=utf-8,%0A%40font%2Dface%20%7B%0Afont%2Dfamily%3A%20octicons%2Dlink%3B%0Asrc%3A%20url%28data%3Afont%2Fwoff%3Bcharset%3Dutf%2D8%3Bbase64%2Cd09GRgABAAAAAAZwABAAAAAACFQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEU0lHAAAGaAAAAAgAAAAIAAAAAUdTVUIAAAZcAAAACgAAAAoAAQAAT1MvMgAAAyQAAABJAAAAYFYEU3RjbWFwAAADcAAAAEUAAACAAJThvmN2dCAAAATkAAAABAAAAAQAAAAAZnBnbQAAA7gAAACyAAABCUM%2B8IhnYXNwAAAGTAAAABAAAAAQABoAI2dseWYAAAFsAAABPAAAAZwcEq9taGVhZAAAAsgAAAA0AAAANgh4a91oaGVhAAADCAAAABoAAAAkCA8DRGhtdHgAAAL8AAAADAAAAAwGAACfbG9jYQAAAsAAAAAIAAAACABiATBtYXhwAAACqAAAABgAAAAgAA8ASm5hbWUAAAToAAABQgAAAlXu73sOcG9zdAAABiwAAAAeAAAAME3QpOBwcmVwAAAEbAAAAHYAAAB%2FaFGpk3jaTY6xa8JAGMW%2FO62BDi0tJLYQincXEypYIiGJjSgHniQ6umTsUEyLm5BV6NDBP8Tpts6F0v%2Bk%2F0an2i%2BitHDw3v2%2B9%2BDBKTzsJNnWJNTgHEy4BgG3EMI9DCEDOGEXzDADU5hBKMIgNPZqoD3SilVaXZCER3%2FI7AtxEJLtzzuZfI%2BVVkprxTlXShWKb3TBecG11rwoNlmmn1P2WYcJczl32etSpKnziC7lQyWe1smVPy%2FLt7Kc%2B0vWY%2FgAgIIEqAN9we0pwKXreiMasxvabDQMM4riO%2BqxM2ogwDGOZTXxwxDiycQIcoYFBLj5K3EIaSctAq2kTYiw%2Bymhce7vwM9jSqO8JyVd5RH9gyTt2%2BJ%2FyUmYlIR0s04n6%2B7Vm1ozezUeLEaUjhaDSuXHwVRgvLJn1tQ7xiuVv%2FocTRF42mNgZGBgYGbwZOBiAAFGJBIMAAizAFoAAABiAGIAznjaY2BkYGAA4in8zwXi%2BW2%2BMjCzMIDApSwvXzC97Z4Ig8N%2FBxYGZgcgl52BCSQKAA3jCV8CAABfAAAAAAQAAEB42mNgZGBg4f3vACQZQABIMjKgAmYAKEgBXgAAeNpjYGY6wTiBgZWBg2kmUxoDA4MPhGZMYzBi1AHygVLYQUCaawqDA4PChxhmh%2F8ODDEsvAwHgMKMIDnGL0x7gJQCAwMAJd4MFwAAAHjaY2BgYGaA4DAGRgYQkAHyGMF8NgYrIM3JIAGVYYDT%2BAEjAwuDFpBmA9KMDEwMCh9i%2Fv8H8sH0%2F4dQc1iAmAkALaUKLgAAAHjaTY9LDsIgEIbtgqHUPpDi3gPoBVyRTmTddOmqTXThEXqrob2gQ1FjwpDvfwCBdmdXC5AVKFu3e5MfNFJ29KTQT48Ob9%2FlqYwOGZxeUelN2U2R6%2BcArgtCJpauW7UQBqnFkUsjAY%2FkOU1cP%2BDAgvxwn1chZDwUbd6CFimGXwzwF6tPbFIcjEl%2BvvmM%2FbyA48e6tWrKArm4ZJlCbdsrxksL1AwWn%2FyBSJKpYbq8AXaaTb8AAHja28jAwOC00ZrBeQNDQOWO%2F%2FsdBBgYGRiYWYAEELEwMTE4uzo5Zzo5b2BxdnFOcALxNjA6b2ByTswC8jYwg0VlNuoCTWAMqNzMzsoK1rEhNqByEyerg5PMJlYuVueETKcd%2F89uBpnpvIEVomeHLoMsAAe1Id4AAAAAAAB42oWQT07CQBTGv0JBhagk7HQzKxca2sJCE1hDt4QF%2B9JOS0nbaaYDCQfwCJ7Au3AHj%2BLO13FMmm6cl7785vven0kBjHCBhfpYuNa5Ph1c0e2Xu3jEvWG7UdPDLZ4N92nOm%2BEBXuAbHmIMSRMs%2B4aUEd4Nd3CHD8NdvOLTsA2GL8M9PODbcL%2BhD7C1xoaHeLJSEao0FEW14ckxC%2BTU8TxvsY6X0eLPmRhry2WVioLpkrbp84LLQPGI7c6sOiUzpWIWS5GzlSgUzzLBSikOPFTOXqly7rqx0Z1Q5BAIoZBSFihQYQOOBEdkCOgXTOHA07HAGjGWiIjaPZNW13%2F%2Blm6S9FT7rLHFJ6fQbkATOG1j2OFMucKJJsxIVfQORl%2B9Jyda6Sl1dUYhSCm1dyClfoeDve4qMYdLEbfqHf3O%2FAdDumsjAAB42mNgYoAAZQYjBmyAGYQZmdhL8zLdDEydARfoAqIAAAABAAMABwAKABMAB%2F%2F%2FAA8AAQAAAAAAAAAAAAAAAAABAAAAAA%3D%3D%29%20format%28%27woff%27%29%3B%0A%7D%0Abody%20%7B%0A%2Dwebkit%2Dtext%2Dsize%2Dadjust%3A%20100%25%3B%0Atext%2Dsize%2Dadjust%3A%20100%25%3B%0Acolor%3A%20%23333%3B%0Afont%2Dfamily%3A%20%22Helvetica%20Neue%22%2C%20Helvetica%2C%20%22Segoe%20UI%22%2C%20Arial%2C%20freesans%2C%20sans%2Dserif%2C%20%22Apple%20Color%20Emoji%22%2C%20%22Segoe%20UI%20Emoji%22%2C%20%22Segoe%20UI%20Symbol%22%3B%0Afont%2Dsize%3A%2016px%3B%0Aline%2Dheight%3A%201%2E6%3B%0Aword%2Dwrap%3A%20break%2Dword%3B%0A%7D%0Aa%20%7B%0Abackground%2Dcolor%3A%20transparent%3B%0A%7D%0Aa%3Aactive%2C%0Aa%3Ahover%20%7B%0Aoutline%3A%200%3B%0A%7D%0Astrong%20%7B%0Afont%2Dweight%3A%20bold%3B%0A%7D%0Ah1%20%7B%0Afont%2Dsize%3A%202em%3B%0Amargin%3A%200%2E67em%200%3B%0A%7D%0Aimg%20%7B%0Aborder%3A%200%3B%0A%7D%0Ahr%20%7B%0Abox%2Dsizing%3A%20content%2Dbox%3B%0Aheight%3A%200%3B%0A%7D%0Apre%20%7B%0Aoverflow%3A%20auto%3B%0A%7D%0Acode%2C%0Akbd%2C%0Apre%20%7B%0Afont%2Dfamily%3A%20monospace%2C%20monospace%3B%0Afont%2Dsize%3A%201em%3B%0A%7D%0Ainput%20%7B%0Acolor%3A%20inherit%3B%0Afont%3A%20inherit%3B%0Amargin%3A%200%3B%0A%7D%0Ahtml%20input%5Bdisabled%5D%20%7B%0Acursor%3A%20default%3B%0A%7D%0Ainput%20%7B%0Aline%2Dheight%3A%20normal%3B%0A%7D%0Ainput%5Btype%3D%22checkbox%22%5D%20%7B%0Abox%2Dsizing%3A%20border%2Dbox%3B%0Apadding%3A%200%3B%0A%7D%0Atable%20%7B%0Aborder%2Dcollapse%3A%20collapse%3B%0Aborder%2Dspacing%3A%200%3B%0A%7D%0Atd%2C%0Ath%20%7B%0Apadding%3A%200%3B%0A%7D%0A%2A%20%7B%0Abox%2Dsizing%3A%20border%2Dbox%3B%0A%7D%0Ainput%20%7B%0Afont%3A%2013px%20%2F%201%2E4%20Helvetica%2C%20arial%2C%20nimbussansl%2C%20liberationsans%2C%20freesans%2C%20clean%2C%20sans%2Dserif%2C%20%22Apple%20Color%20Emoji%22%2C%20%22Segoe%20UI%20Emoji%22%2C%20%22Segoe%20UI%20Symbol%22%3B%0A%7D%0Aa%20%7B%0Acolor%3A%20%234078c0%3B%0Atext%2Ddecoration%3A%20none%3B%0A%7D%0Aa%3Ahover%2C%0Aa%3Aactive%20%7B%0Atext%2Ddecoration%3A%20underline%3B%0A%7D%0Ahr%20%7B%0Aheight%3A%200%3B%0Amargin%3A%2015px%200%3B%0Aoverflow%3A%20hidden%3B%0Abackground%3A%20transparent%3B%0Aborder%3A%200%3B%0Aborder%2Dbottom%3A%201px%20solid%20%23ddd%3B%0A%7D%0Ahr%3Abefore%20%7B%0Adisplay%3A%20table%3B%0Acontent%3A%20%22%22%3B%0A%7D%0Ahr%3Aafter%20%7B%0Adisplay%3A%20table%3B%0Aclear%3A%20both%3B%0Acontent%3A%20%22%22%3B%0A%7D%0Ah1%2C%0Ah2%2C%0Ah3%2C%0Ah4%2C%0Ah5%2C%0Ah6%20%7B%0Amargin%2Dtop%3A%2015px%3B%0Amargin%2Dbottom%3A%2015px%3B%0Aline%2Dheight%3A%201%2E1%3B%0A%7D%0Ah1%20%7B%0Afont%2Dsize%3A%2030px%3B%0A%7D%0Ah2%20%7B%0Afont%2Dsize%3A%2021px%3B%0A%7D%0Ah3%20%7B%0Afont%2Dsize%3A%2016px%3B%0A%7D%0Ah4%20%7B%0Afont%2Dsize%3A%2014px%3B%0A%7D%0Ah5%20%7B%0Afont%2Dsize%3A%2012px%3B%0A%7D%0Ah6%20%7B%0Afont%2Dsize%3A%2011px%3B%0A%7D%0Ablockquote%20%7B%0Amargin%3A%200%3B%0A%7D%0Aul%2C%0Aol%20%7B%0Apadding%3A%200%3B%0Amargin%2Dtop%3A%200%3B%0Amargin%2Dbottom%3A%200%3B%0A%7D%0Aol%20ol%2C%0Aul%20ol%20%7B%0Alist%2Dstyle%2Dtype%3A%20lower%2Droman%3B%0A%7D%0Aul%20ul%20ol%2C%0Aul%20ol%20ol%2C%0Aol%20ul%20ol%2C%0Aol%20ol%20ol%20%7B%0Alist%2Dstyle%2Dtype%3A%20lower%2Dalpha%3B%0A%7D%0Add%20%7B%0Amargin%2Dleft%3A%200%3B%0A%7D%0Acode%20%7B%0Afont%2Dfamily%3A%20Consolas%2C%20%22Liberation%20Mono%22%2C%20Menlo%2C%20Courier%2C%20monospace%3B%0Afont%2Dsize%3A%2012px%3B%0A%7D%0Apre%20%7B%0Amargin%2Dtop%3A%200%3B%0Amargin%2Dbottom%3A%200%3B%0Afont%3A%2012px%20Consolas%2C%20%22Liberation%20Mono%22%2C%20Menlo%2C%20Courier%2C%20monospace%3B%0A%7D%0A%2Eselect%3A%3A%2Dms%2Dexpand%20%7B%0Aopacity%3A%200%3B%0A%7D%0A%2Eocticon%20%7B%0Afont%3A%20normal%20normal%20normal%2016px%2F1%20octicons%2Dlink%3B%0Adisplay%3A%20inline%2Dblock%3B%0Atext%2Ddecoration%3A%20none%3B%0Atext%2Drendering%3A%20auto%3B%0A%2Dwebkit%2Dfont%2Dsmoothing%3A%20antialiased%3B%0A%2Dmoz%2Dosx%2Dfont%2Dsmoothing%3A%20grayscale%3B%0A%2Dwebkit%2Duser%2Dselect%3A%20none%3B%0A%2Dmoz%2Duser%2Dselect%3A%20none%3B%0A%2Dms%2Duser%2Dselect%3A%20none%3B%0Auser%2Dselect%3A%20none%3B%0A%7D%0A%2Eocticon%2Dlink%3Abefore%20%7B%0Acontent%3A%20%27%5Cf05c%27%3B%0A%7D%0A%2Emarkdown%2Dbody%3Abefore%20%7B%0Adisplay%3A%20table%3B%0Acontent%3A%20%22%22%3B%0A%7D%0A%2Emarkdown%2Dbody%3Aafter%20%7B%0Adisplay%3A%20table%3B%0Aclear%3A%20both%3B%0Acontent%3A%20%22%22%3B%0A%7D%0A%2Emarkdown%2Dbody%3E%2A%3Afirst%2Dchild%20%7B%0Amargin%2Dtop%3A%200%20%21important%3B%0A%7D%0A%2Emarkdown%2Dbody%3E%2A%3Alast%2Dchild%20%7B%0Amargin%2Dbottom%3A%200%20%21important%3B%0A%7D%0Aa%3Anot%28%5Bhref%5D%29%20%7B%0Acolor%3A%20inherit%3B%0Atext%2Ddecoration%3A%20none%3B%0A%7D%0A%2Eanchor%20%7B%0Adisplay%3A%20inline%2Dblock%3B%0Apadding%2Dright%3A%202px%3B%0Amargin%2Dleft%3A%20%2D18px%3B%0A%7D%0A%2Eanchor%3Afocus%20%7B%0Aoutline%3A%20none%3B%0A%7D%0Ah1%2C%0Ah2%2C%0Ah3%2C%0Ah4%2C%0Ah5%2C%0Ah6%20%7B%0Amargin%2Dtop%3A%201em%3B%0Amargin%2Dbottom%3A%2016px%3B%0Afont%2Dweight%3A%20bold%3B%0Aline%2Dheight%3A%201%2E4%3B%0A%7D%0Ah1%20%2Eocticon%2Dlink%2C%0Ah2%20%2Eocticon%2Dlink%2C%0Ah3%20%2Eocticon%2Dlink%2C%0Ah4%20%2Eocticon%2Dlink%2C%0Ah5%20%2Eocticon%2Dlink%2C%0Ah6%20%2Eocticon%2Dlink%20%7B%0Acolor%3A%20%23000%3B%0Avertical%2Dalign%3A%20middle%3B%0Avisibility%3A%20hidden%3B%0A%7D%0Ah1%3Ahover%20%2Eanchor%2C%0Ah2%3Ahover%20%2Eanchor%2C%0Ah3%3Ahover%20%2Eanchor%2C%0Ah4%3Ahover%20%2Eanchor%2C%0Ah5%3Ahover%20%2Eanchor%2C%0Ah6%3Ahover%20%2Eanchor%20%7B%0Atext%2Ddecoration%3A%20none%3B%0A%7D%0Ah1%3Ahover%20%2Eanchor%20%2Eocticon%2Dlink%2C%0Ah2%3Ahover%20%2Eanchor%20%2Eocticon%2Dlink%2C%0Ah3%3Ahover%20%2Eanchor%20%2Eocticon%2Dlink%2C%0Ah4%3Ahover%20%2Eanchor%20%2Eocticon%2Dlink%2C%0Ah5%3Ahover%20%2Eanchor%20%2Eocticon%2Dlink%2C%0Ah6%3Ahover%20%2Eanchor%20%2Eocticon%2Dlink%20%7B%0Avisibility%3A%20visible%3B%0A%7D%0Ah1%20%7B%0Apadding%2Dbottom%3A%200%2E3em%3B%0Afont%2Dsize%3A%202%2E25em%3B%0Aline%2Dheight%3A%201%2E2%3B%0Aborder%2Dbottom%3A%201px%20solid%20%23eee%3B%0A%7D%0Ah1%20%2Eanchor%20%7B%0Aline%2Dheight%3A%201%3B%0A%7D%0Ah2%20%7B%0Apadding%2Dbottom%3A%200%2E3em%3B%0Afont%2Dsize%3A%201%2E75em%3B%0Aline%2Dheight%3A%201%2E225%3B%0Aborder%2Dbottom%3A%201px%20solid%20%23eee%3B%0A%7D%0Ah2%20%2Eanchor%20%7B%0Aline%2Dheight%3A%201%3B%0A%7D%0Ah3%20%7B%0Afont%2Dsize%3A%201%2E5em%3B%0Aline%2Dheight%3A%201%2E43%3B%0A%7D%0Ah3%20%2Eanchor%20%7B%0Aline%2Dheight%3A%201%2E2%3B%0A%7D%0Ah4%20%7B%0Afont%2Dsize%3A%201%2E25em%3B%0A%7D%0Ah4%20%2Eanchor%20%7B%0Aline%2Dheight%3A%201%2E2%3B%0A%7D%0Ah5%20%7B%0Afont%2Dsize%3A%201em%3B%0A%7D%0Ah5%20%2Eanchor%20%7B%0Aline%2Dheight%3A%201%2E1%3B%0A%7D%0Ah6%20%7B%0Afont%2Dsize%3A%201em%3B%0Acolor%3A%20%23777%3B%0A%7D%0Ah6%20%2Eanchor%20%7B%0Aline%2Dheight%3A%201%2E1%3B%0A%7D%0Ap%2C%0Ablockquote%2C%0Aul%2C%0Aol%2C%0Adl%2C%0Atable%2C%0Apre%20%7B%0Amargin%2Dtop%3A%200%3B%0Amargin%2Dbottom%3A%2016px%3B%0A%7D%0Ahr%20%7B%0Aheight%3A%204px%3B%0Apadding%3A%200%3B%0Amargin%3A%2016px%200%3B%0Abackground%2Dcolor%3A%20%23e7e7e7%3B%0Aborder%3A%200%20none%3B%0A%7D%0Aul%2C%0Aol%20%7B%0Apadding%2Dleft%3A%202em%3B%0A%7D%0Aul%20ul%2C%0Aul%20ol%2C%0Aol%20ol%2C%0Aol%20ul%20%7B%0Amargin%2Dtop%3A%200%3B%0Amargin%2Dbottom%3A%200%3B%0A%7D%0Ali%3Ep%20%7B%0Amargin%2Dtop%3A%2016px%3B%0A%7D%0Adl%20%7B%0Apadding%3A%200%3B%0A%7D%0Adl%20dt%20%7B%0Apadding%3A%200%3B%0Amargin%2Dtop%3A%2016px%3B%0Afont%2Dsize%3A%201em%3B%0Afont%2Dstyle%3A%20italic%3B%0Afont%2Dweight%3A%20bold%3B%0A%7D%0Adl%20dd%20%7B%0Apadding%3A%200%2016px%3B%0Amargin%2Dbottom%3A%2016px%3B%0A%7D%0Ablockquote%20%7B%0Apadding%3A%200%2015px%3B%0Acolor%3A%20%23777%3B%0Aborder%2Dleft%3A%204px%20solid%20%23ddd%3B%0A%7D%0Ablockquote%3E%3Afirst%2Dchild%20%7B%0Amargin%2Dtop%3A%200%3B%0A%7D%0Ablockquote%3E%3Alast%2Dchild%20%7B%0Amargin%2Dbottom%3A%200%3B%0A%7D%0Atable%20%7B%0Adisplay%3A%20block%3B%0Awidth%3A%20100%25%3B%0Aoverflow%3A%20auto%3B%0Aword%2Dbreak%3A%20normal%3B%0Aword%2Dbreak%3A%20keep%2Dall%3B%0A%7D%0Atable%20th%20%7B%0Afont%2Dweight%3A%20bold%3B%0A%7D%0Atable%20th%2C%0Atable%20td%20%7B%0Apadding%3A%206px%2013px%3B%0Aborder%3A%201px%20solid%20%23ddd%3B%0A%7D%0Atable%20tr%20%7B%0Abackground%2Dcolor%3A%20%23fff%3B%0Aborder%2Dtop%3A%201px%20solid%20%23ccc%3B%0A%7D%0Atable%20tr%3Anth%2Dchild%282n%29%20%7B%0Abackground%2Dcolor%3A%20%23f8f8f8%3B%0A%7D%0Aimg%20%7B%0Amax%2Dwidth%3A%20100%25%3B%0Abox%2Dsizing%3A%20content%2Dbox%3B%0Abackground%2Dcolor%3A%20%23fff%3B%0A%7D%0Acode%20%7B%0Apadding%3A%200%3B%0Apadding%2Dtop%3A%200%2E2em%3B%0Apadding%2Dbottom%3A%200%2E2em%3B%0Amargin%3A%200%3B%0Afont%2Dsize%3A%2085%25%3B%0Abackground%2Dcolor%3A%20rgba%280%2C0%2C0%2C0%2E04%29%3B%0Aborder%2Dradius%3A%203px%3B%0A%7D%0Acode%3Abefore%2C%0Acode%3Aafter%20%7B%0Aletter%2Dspacing%3A%20%2D0%2E2em%3B%0Acontent%3A%20%22%5C00a0%22%3B%0A%7D%0Apre%3Ecode%20%7B%0Apadding%3A%200%3B%0Amargin%3A%200%3B%0Afont%2Dsize%3A%20100%25%3B%0Aword%2Dbreak%3A%20normal%3B%0Awhite%2Dspace%3A%20pre%3B%0Abackground%3A%20transparent%3B%0Aborder%3A%200%3B%0A%7D%0A%2Ehighlight%20%7B%0Amargin%2Dbottom%3A%2016px%3B%0A%7D%0A%2Ehighlight%20pre%2C%0Apre%20%7B%0Apadding%3A%2016px%3B%0Aoverflow%3A%20auto%3B%0Afont%2Dsize%3A%2085%25%3B%0Aline%2Dheight%3A%201%2E45%3B%0Abackground%2Dcolor%3A%20%23f7f7f7%3B%0Aborder%2Dradius%3A%203px%3B%0A%7D%0A%2Ehighlight%20pre%20%7B%0Amargin%2Dbottom%3A%200%3B%0Aword%2Dbreak%3A%20normal%3B%0A%7D%0Apre%20%7B%0Aword%2Dwrap%3A%20normal%3B%0A%7D%0Apre%20code%20%7B%0Adisplay%3A%20inline%3B%0Amax%2Dwidth%3A%20initial%3B%0Apadding%3A%200%3B%0Amargin%3A%200%3B%0Aoverflow%3A%20initial%3B%0Aline%2Dheight%3A%20inherit%3B%0Aword%2Dwrap%3A%20normal%3B%0Abackground%2Dcolor%3A%20transparent%3B%0Aborder%3A%200%3B%0A%7D%0Apre%20code%3Abefore%2C%0Apre%20code%3Aafter%20%7B%0Acontent%3A%20normal%3B%0A%7D%0Akbd%20%7B%0Adisplay%3A%20inline%2Dblock%3B%0Apadding%3A%203px%205px%3B%0Afont%2Dsize%3A%2011px%3B%0Aline%2Dheight%3A%2010px%3B%0Acolor%3A%20%23555%3B%0Avertical%2Dalign%3A%20middle%3B%0Abackground%2Dcolor%3A%20%23fcfcfc%3B%0Aborder%3A%20solid%201px%20%23ccc%3B%0Aborder%2Dbottom%2Dcolor%3A%20%23bbb%3B%0Aborder%2Dradius%3A%203px%3B%0Abox%2Dshadow%3A%20inset%200%20%2D1px%200%20%23bbb%3B%0A%7D%0A%2Epl%2Dc%20%7B%0Acolor%3A%20%23969896%3B%0A%7D%0A%2Epl%2Dc1%2C%0A%2Epl%2Ds%20%2Epl%2Dv%20%7B%0Acolor%3A%20%230086b3%3B%0A%7D%0A%2Epl%2De%2C%0A%2Epl%2Den%20%7B%0Acolor%3A%20%23795da3%3B%0A%7D%0A%2Epl%2Ds%20%2Epl%2Ds1%2C%0A%2Epl%2Dsmi%20%7B%0Acolor%3A%20%23333%3B%0A%7D%0A%2Epl%2Dent%20%7B%0Acolor%3A%20%2363a35c%3B%0A%7D%0A%2Epl%2Dk%20%7B%0Acolor%3A%20%23a71d5d%3B%0A%7D%0A%2Epl%2Dpds%2C%0A%2Epl%2Ds%2C%0A%2Epl%2Ds%20%2Epl%2Dpse%20%2Epl%2Ds1%2C%0A%2Epl%2Dsr%2C%0A%2Epl%2Dsr%20%2Epl%2Dcce%2C%0A%2Epl%2Dsr%20%2Epl%2Dsra%2C%0A%2Epl%2Dsr%20%2Epl%2Dsre%20%7B%0Acolor%3A%20%23183691%3B%0A%7D%0A%2Epl%2Dv%20%7B%0Acolor%3A%20%23ed6a43%3B%0A%7D%0A%2Epl%2Did%20%7B%0Acolor%3A%20%23b52a1d%3B%0A%7D%0A%2Epl%2Dii%20%7B%0Abackground%2Dcolor%3A%20%23b52a1d%3B%0Acolor%3A%20%23f8f8f8%3B%0A%7D%0A%2Epl%2Dsr%20%2Epl%2Dcce%20%7B%0Acolor%3A%20%2363a35c%3B%0Afont%2Dweight%3A%20bold%3B%0A%7D%0A%2Epl%2Dml%20%7B%0Acolor%3A%20%23693a17%3B%0A%7D%0A%2Epl%2Dmh%2C%0A%2Epl%2Dmh%20%2Epl%2Den%2C%0A%2Epl%2Dms%20%7B%0Acolor%3A%20%231d3e81%3B%0Afont%2Dweight%3A%20bold%3B%0A%7D%0A%2Epl%2Dmq%20%7B%0Acolor%3A%20%23008080%3B%0A%7D%0A%2Epl%2Dmi%20%7B%0Acolor%3A%20%23333%3B%0Afont%2Dstyle%3A%20italic%3B%0A%7D%0A%2Epl%2Dmb%20%7B%0Acolor%3A%20%23333%3B%0Afont%2Dweight%3A%20bold%3B%0A%7D%0A%2Epl%2Dmd%20%7B%0Abackground%2Dcolor%3A%20%23ffecec%3B%0Acolor%3A%20%23bd2c00%3B%0A%7D%0A%2Epl%2Dmi1%20%7B%0Abackground%2Dcolor%3A%20%23eaffea%3B%0Acolor%3A%20%2355a532%3B%0A%7D%0A%2Epl%2Dmdr%20%7B%0Acolor%3A%20%23795da3%3B%0Afont%2Dweight%3A%20bold%3B%0A%7D%0A%2Epl%2Dmo%20%7B%0Acolor%3A%20%231d3e81%3B%0A%7D%0Akbd%20%7B%0Adisplay%3A%20inline%2Dblock%3B%0Apadding%3A%203px%205px%3B%0Afont%3A%2011px%20Consolas%2C%20%22Liberation%20Mono%22%2C%20Menlo%2C%20Courier%2C%20monospace%3B%0Aline%2Dheight%3A%2010px%3B%0Acolor%3A%20%23555%3B%0Avertical%2Dalign%3A%20middle%3B%0Abackground%2Dcolor%3A%20%23fcfcfc%3B%0Aborder%3A%20solid%201px%20%23ccc%3B%0Aborder%2Dbottom%2Dcolor%3A%20%23bbb%3B%0Aborder%2Dradius%3A%203px%3B%0Abox%2Dshadow%3A%20inset%200%20%2D1px%200%20%23bbb%3B%0A%7D%0A%2Etask%2Dlist%2Ditem%20%7B%0Alist%2Dstyle%2Dtype%3A%20none%3B%0A%7D%0A%2Etask%2Dlist%2Ditem%2B%2Etask%2Dlist%2Ditem%20%7B%0Amargin%2Dtop%3A%203px%3B%0A%7D%0A%2Etask%2Dlist%2Ditem%20input%20%7B%0Amargin%3A%200%200%2E35em%200%2E25em%20%2D1%2E6em%3B%0Avertical%2Dalign%3A%20middle%3B%0A%7D%0A%3Achecked%2B%2Eradio%2Dlabel%20%7B%0Az%2Dindex%3A%201%3B%0Aposition%3A%20relative%3B%0Aborder%2Dcolor%3A%20%234078c0%3B%0A%7D%0A%2EsourceLine%20%7B%0Adisplay%3A%20inline%2Dblock%3B%0A%7D%0Acode%20%2Ekw%20%7B%20color%3A%20%23000000%3B%20%7D%0Acode%20%2Edt%20%7B%20color%3A%20%23ed6a43%3B%20%7D%0Acode%20%2Edv%20%7B%20color%3A%20%23009999%3B%20%7D%0Acode%20%2Ebn%20%7B%20color%3A%20%23009999%3B%20%7D%0Acode%20%2Efl%20%7B%20color%3A%20%23009999%3B%20%7D%0Acode%20%2Ech%20%7B%20color%3A%20%23009999%3B%20%7D%0Acode%20%2Est%20%7B%20color%3A%20%23183691%3B%20%7D%0Acode%20%2Eco%20%7B%20color%3A%20%23969896%3B%20%7D%0Acode%20%2Eot%20%7B%20color%3A%20%230086b3%3B%20%7D%0Acode%20%2Eal%20%7B%20color%3A%20%23a61717%3B%20%7D%0Acode%20%2Efu%20%7B%20color%3A%20%2363a35c%3B%20%7D%0Acode%20%2Eer%20%7B%20color%3A%20%23a61717%3B%20background%2Dcolor%3A%20%23e3d2d2%3B%20%7D%0Acode%20%2Ewa%20%7B%20color%3A%20%23000000%3B%20%7D%0Acode%20%2Ecn%20%7B%20color%3A%20%23008080%3B%20%7D%0Acode%20%2Esc%20%7B%20color%3A%20%23008080%3B%20%7D%0Acode%20%2Evs%20%7B%20color%3A%20%23183691%3B%20%7D%0Acode%20%2Ess%20%7B%20color%3A%20%23183691%3B%20%7D%0Acode%20%2Eim%20%7B%20color%3A%20%23000000%3B%20%7D%0Acode%20%2Eva%20%7Bcolor%3A%20%23008080%3B%20%7D%0Acode%20%2Ecf%20%7B%20color%3A%20%23000000%3B%20%7D%0Acode%20%2Eop%20%7B%20color%3A%20%23000000%3B%20%7D%0Acode%20%2Ebu%20%7B%20color%3A%20%23000000%3B%20%7D%0Acode%20%2Eex%20%7B%20color%3A%20%23000000%3B%20%7D%0Acode%20%2Epp%20%7B%20color%3A%20%23999999%3B%20%7D%0Acode%20%2Eat%20%7B%20color%3A%20%23008080%3B%20%7D%0Acode%20%2Edo%20%7B%20color%3A%20%23969896%3B%20%7D%0Acode%20%2Ean%20%7B%20color%3A%20%23008080%3B%20%7D%0Acode%20%2Ecv%20%7B%20color%3A%20%23008080%3B%20%7D%0Acode%20%2Ein%20%7B%20color%3A%20%23008080%3B%20%7D%0A" rel="stylesheet">
<style>
body {
  box-sizing: border-box;
  min-width: 200px;
  max-width: 980px;
  margin: 0 auto;
  padding: 45px;
  padding-top: 0px;
}
</style>

</head>

<body>

<h1 id="trends-in-ecology-jobs-by-analyzing-ecolog-posts-with-r">Trends in Ecology Jobs by Analyzing Ecolog Posts With R</h1>
<p>Sheng Pei Wang<br>
Nov 13, 2018</p>
<h1 id="why-and-what-am-i-doing-here">Why and what am I doing here?</h1>
<h2 id="back-story">Back story</h2>
<p>I have subscribed for the Ecolog listserv for a long time, hoping for
 the perfect position just for me. But given the growing competition for
 the stagnating job market in academia, I decided to plunge into the 
"real world" to pursue my interests in understanding the world through 
thinking, experimentation, and analysis. Before I leave my academic 
evolutionary ecologist dream behind, I want to figure out whether this 
one source of data supports the broader trend in the academic job 
market. Specificall, I want to address these three questions:</p>
<h2 id="questions">Questions</h2>
<ol>
<li>Is there an over supply? In other words, are lower level positions 
more abundant than higher level positions. If so, I should observe 
number of posts for PhD &gt; postdoc &gt; faculty</li>
<li>Is there growing supply of PhD over time? This should show up as an increase in numbers of PhD or postdoc positions.</li>
<li>On the other hand, is the job market stagnating? This would be represented by faculty level positions being constant over time?</li>
</ol>
<h2 id="methods">Methods</h2>
<p>All of ecolog's posts are available online, dating back to 2000. This
 makes this a great data source, but the amount of data is not trivial 
to process. I decided to focus only on the titles of the posts, because 
it is usually pretty easy to tell what audience the posts target.<br>
To get the data, I need to <strong>scrap the website</strong> for titles of every posts and to decide the target level (PhD/postdoc/faculty) of each post using <strong>text mining</strong>.</p>
<h1 id="part-1.-getting-the-data">Part 1. Getting the data</h1>
<h3 id="set-up-the-r-environment">Set up the R environment:</h3>
<div class="sourceCode"><pre class="sourceCode r"><code class="sourceCode r"><span class="kw">library</span>(<span class="st">'rvest'</span>)    <span class="co"># Parsing of HTML/XML files </span>
<span class="kw">library</span>(tidyverse)  <span class="co"># General-purpose data wrangling</span>
<span class="kw">library</span>(stringr)    <span class="co"># String manipulation</span>
<span class="kw">library</span>(ggplot2)

<span class="kw">library</span>(tidytext)       <span class="co"># provides additional text mining functions</span>

<span class="kw">library</span>(rebus)      <span class="co"># Verbose regular expressions</span>
<span class="kw">library</span>(lubridate)  <span class="co"># Eases DateTime manipulation</span></code></pre></div>
<h2 id="creating-the-list-of-webpages-to-scrap">Creating the list of webpages to scrap</h2>
<p>The actual R code file named "Fun Ecolog Data Scrapping Project.R" 
has the codes with which I explored how to get the data. But the simple 
story is this:</p>
<p>I notice that the posts were stored on different pages grouped by weeks, and the master list is at <a href="https://listserv.umd.edu/archives/ecolog-l.html" class="uri">https://listserv.umd.edu/archives/ecolog-l.html</a>.
 So I can scrap the master list to get the weekly lists' url's, and then
 I can scrape the weekly lists to get the titles of every post:</p>
<div class="sourceCode"><pre class="sourceCode r"><code class="sourceCode r">page_archive &lt;-<span class="st"> </span><span class="kw">read_html</span>(<span class="st">"https://listserv.umd.edu/archives/ecolog-l.html"</span>)
<span class="co"># Some times this command end up with an error message of "Timeout", because the archive's server is picky about the connections. My home network tend to do this. The only advice I have is to be patient and maybe try a different network if possible.</span>

<span class="co"># I noticed that by interacting with html source code of the full list, all the weekly links are stored under the "li" node</span>
pages_info  &lt;-<span class="st"> </span>page_archive <span class="op">%&gt;%</span><span class="st">  </span><span class="kw">html_nodes</span>(<span class="st">"li"</span>)  <span class="co"># Scrap the weekly link info from main page</span>

urls &lt;-<span class="st"> </span><span class="kw">lapply</span>(pages_info, <span class="cf">function</span>(x) <span class="kw">str_sub</span>(x,<span class="dv">15</span>, <span class="dv">52</span>)) <span class="co"># get only the url part, which is between 15-52 characters.</span>
urls &lt;-<span class="st"> </span>urls[<span class="op">-</span><span class="kw">c</span>(<span class="dv">1</span><span class="op">:</span><span class="dv">4</span>)] <span class="co"># remove the first 4 items that are not related to our purpose.</span>

<span class="co"># Making the list of urls</span>
list_of_pages &lt;-<span class="st"> </span><span class="kw">str_c</span>(<span class="st">'https://listserv.umd.edu'</span>, urls)
<span class="kw">head</span>(list_of_pages)</code></pre></div>
<pre><code>## [1] "https://listserv.umd.edu/cgi-bin/wa?A1=ind1811b&amp;amp;L=ecolog-l"
## [2] "https://listserv.umd.edu/cgi-bin/wa?A1=ind1811a&amp;amp;L=ecolog-l"
## [3] "https://listserv.umd.edu/cgi-bin/wa?A1=ind1810e&amp;amp;L=ecolog-l"
## [4] "https://listserv.umd.edu/cgi-bin/wa?A1=ind1810d&amp;amp;L=ecolog-l"
## [5] "https://listserv.umd.edu/cgi-bin/wa?A1=ind1810c&amp;amp;L=ecolog-l"
## [6] "https://listserv.umd.edu/cgi-bin/wa?A1=ind1810b&amp;amp;L=ecolog-l"</code></pre>
<h2 id="a-function-to-get-the-relevant-information">A function to get the relevant information</h2>
<h3 id="titles-posted-in-the-last-20-years">(titles posted in the last 20 years)</h3>
<p>To actually get the data from the urls, I wrote a small functions to 
get the necessary information from each page. Then apply the function to
 the list of urls.</p>
<div class="sourceCode"><pre class="sourceCode r"><code class="sourceCode r"><span class="co">#I need to create a custom function that gets all postings from each page</span>
ecolog_p &lt;-<span class="st"> </span><span class="cf">function</span>(url){
  webpage &lt;-<span class="st"> </span><span class="kw">read_html</span>(url)
  <span class="kw">Sys.sleep</span>(<span class="fl">0.2</span>)
  webpage <span class="op">%&gt;%</span><span class="st"> </span><span class="kw">html_nodes</span>(<span class="st">"tr:nth-child(3) a"</span>) <span class="op">%&gt;%</span>
<span class="st">              </span>html_text
}

<span class="co"># ecolog_postings&lt;- lapply(list_of_pages, ecolog_p)</span></code></pre></div>
<p>I commented out the last line of code so it's not run here, because 
it takes about 2 hours to get all the data with a good internet 
connections. If anyone were to run this line of code, I recommend 
breaking it down into chuncks.</p>
<h1 id="part-2.-text-mining-of-the-tiles">Part 2. Text mining of the tiles</h1>
<p>The idea behind this section is simple: I want to determine if a post is advertising a PhD, postdoc, or faculty position.</p>
<h2 id="a-function-to-characterize-the-type-of-positions-from-only-titles">A function to characterize the type of positions from only titles</h2>
<p>Characterizing the target of a post can be complicated, but I don't 
need to be precise about every post here given the amount of posts (more
 than 10,000 across over 18 years). So I took a simple approach of 
counting the occurrence of key words such as PhD to determine the 
abundance of each level of posts. By reading through a few months' worth
 of posts myself, I confirmed that the key words are good indicator of 
the content of the posts, and that they are rarely repeated in a single 
title.</p>
<div class="sourceCode"><pre class="sourceCode r"><code class="sourceCode r"><span class="co">#I wrote another function to count the appearance of different key words.</span>
position_breakdown &lt;-<span class="st"> </span><span class="cf">function</span>(x){
  x =<span class="st"> </span><span class="kw">str_to_lower</span>(x)
  u =<span class="st"> </span><span class="kw">sum</span>(<span class="kw">str_count</span>(x, <span class="st">"reu|intern|volunteer"</span>))
  m =<span class="st"> </span><span class="kw">sum</span>(<span class="kw">str_count</span>(x, <span class="st">"ms |m.s |msc |m.sc "</span>))  
  phd =<span class="st"> </span><span class="kw">sum</span>(<span class="kw">str_count</span>(x, <span class="st">"phd"</span>))
  po =<span class="st"> </span><span class="kw">sum</span>(<span class="kw">str_count</span>(x, <span class="st">"postdoc|post-doc|post doc"</span>))  
  f =<span class="st"> </span><span class="kw">sum</span>(<span class="kw">str_count</span>(x, <span class="st">"director|faculty|professor|instructor"</span>))
  o =<span class="st"> </span><span class="kw">sum</span>(<span class="kw">str_count</span>(x, <span class="st">"technician|assistant|manager"</span>))
  l =<span class="st"> </span><span class="kw">length</span>(x)
  y =<span class="st"> </span><span class="kw">data.frame</span>(<span class="dt">undergrad =</span> u, <span class="dt">ms =</span> m, <span class="dt">phd =</span> phd, <span class="dt">postdoc =</span> po, 
                <span class="dt">faculty =</span> f, <span class="dt">otherjob =</span> o, <span class="dt">total =</span> l)
  y}</code></pre></div>
<h2 id="get-a-small-sample-dataset">Get a small sample dataset:</h2>
<p>I will be using a sample page from the first week of 2018:</p>
<div class="sourceCode"><pre class="sourceCode r"><code class="sourceCode r">url &lt;-<span class="st"> "https://listserv.umd.edu/cgi-bin/wa?A1=ind1804a&amp;L=ecolog-l"</span>
webpage &lt;-<span class="st"> </span><span class="kw">read_html</span>(url)
page_4i18 &lt;-<span class="st"> </span><span class="kw">html_text</span>(<span class="kw">html_nodes</span>(webpage,<span class="st">"tr:nth-child(3) a"</span>)) <span class="co">#First download the webpage</span>
<span class="co"># A quick note that I used the web tool "Selector Gadget"" to generate the CSS selectors. i.e. the ""tr:nth-child(3) a"" part</span></code></pre></div>
<h2 id="look-at-data-using-the-sample-dataset">Look at data using the sample dataset:</h2>
<div class="sourceCode"><pre class="sourceCode r"><code class="sourceCode r"><span class="co"># An example of using the position_breakdown function.</span>
<span class="kw">position_breakdown</span>(page_4i18)</code></pre></div>
<pre><code>##   undergrad ms phd postdoc faculty otherjob total
## 1         3  5   8      14       4       15    89</code></pre>
<p>As for this particular week, you can see that their are increasing 
numbers of jobs with increasing training, from undergrad to master to 
phD to postdoc positions. However, this trend stops at the postdoc 
level, and there are only 4 faculty positions. <strong>The munber of 
posdoc positions is 3.5 times that of faculty positions in this one 
week, supporting my first hyothesis that there is a oversupply of phds</strong> I will analyze the full dataset in the next section to test whether this trend holds.</p>
<h1 id="part-3.-analyzing-the-data">Part 3. Analyzing the data</h1>
<p>I'm still cleaning the code up, so please stay tuned.</p>



</body></html>