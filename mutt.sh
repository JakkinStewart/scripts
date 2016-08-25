case "$(pidof mutt | wc -w)" in

0)	mutt
;;
1)	mutt -R
;;
*)	mutt -R
;;
esac
