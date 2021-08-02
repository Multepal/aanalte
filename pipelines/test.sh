#! /bin/bash

echo "Publishing PV"
saxon collections/popol-wuj/xom-all-flat-mod-pnums.xml transformers/add-lb-ids.xsl > tmp/xom-all-flat-mod-pnums-lbids.xml
saxon tmp/xom-all-flat-mod-pnums-lbids.xml transformers/tei-to-html.xsl > docs/xom-all-flat-mod-pnums-lbids.html

echo "Publishing Escolios"
saxon collections/popol-wuj-escolios/xom-escolios-v1.xml transformers/add-lb-ids.xsl > tmp/xom-escolios-v1-lbids.xml
saxon tmp/xom-escolios-v1-lbids.xml transformers/tei-to-html.xsl > docs/xom-escolios-v1-lbids.html