% The edge facts edge(A, B)
edge('core/text-transform0#', 'table1').
edge('col-name:name', 'core/text-transform0#').
edge('expression:value.toTitlecase()', 'core/text-transform0#').
edge('table0', 'core/text-transform0#').
edge('core/text-transform1#', 'table2').
edge('col-name:name', 'core/text-transform1#').
edge('expression:value.trim()', 'core/text-transform1#').
edge('table1', 'core/text-transform1#').
edge('core/text-transform2#', 'table3').
edge('col-name:name', 'core/text-transform2#').
edge('expression:value.replace(/\\s+/,'_')', 'core/text-transform2#').
edge('table2', 'core/text-transform2#').
edge('core/column-removal0#', 'table4').
edge('col-name:description', 'core/column-removal0#').
edge('table3', 'core/column-removal0#').
edge('core/text-transform3#', 'table5').
edge('col-name:menus_appeared', 'core/text-transform3#').
edge('expression:value.toNumber()', 'core/text-transform3#').
edge('table4', 'core/text-transform3#').
edge('core/text-transform4#', 'table6').
edge('col-name:times_appeared', 'core/text-transform4#').
edge('expression:value.toNumber()', 'core/text-transform4#').
edge('table5', 'core/text-transform4#').
edge('core/text-transform5#', 'table7').
edge('col-name:first_appeared', 'core/text-transform5#').
edge('expression:value.toNumber()', 'core/text-transform5#').
edge('table6', 'core/text-transform5#').
edge('core/text-transform6#', 'table8').
edge('col-name:last_appeared', 'core/text-transform6#').
edge('expression:value.toNumber()', 'core/text-transform6#').
edge('table7', 'core/text-transform6#').
edge('core/text-transform7#', 'table9').
edge('col-name:lowest_price', 'core/text-transform7#').
edge('expression:value.toNumber()', 'core/text-transform7#').
edge('table8', 'core/text-transform7#').
edge('core/text-transform8#', 'table10').
edge('col-name:highest_price', 'core/text-transform8#').
edge('expression:value.toNumber()', 'core/text-transform8#').
edge('table9', 'core/text-transform8#').
edge('core/text-transform9#', 'table11').
edge('col-name:name', 'core/text-transform9#').
edge('expression:value.unescape('html')', 'core/text-transform9#').
edge('table10', 'core/text-transform9#').
edge('core/mass-edit0#', 'table12').
edge('col-name:first_appeared', 'core/mass-edit0#').
edge('table11', 'core/mass-edit0#').
edge('core/mass-edit1#', 'table13').
edge('col-name:last_appeared', 'core/mass-edit1#').
edge('table12', 'core/mass-edit1#').
edge('core/mass-edit2#', 'table14').
edge('col-name:last_appeared', 'core/mass-edit2#').
edge('table13', 'core/mass-edit2#').
edge('core/mass-edit3#', 'table15').
edge('col-name:first_appeared', 'core/mass-edit3#').
edge('table14', 'core/mass-edit3#').
edge('core/text-transform10#', 'table16').
edge('col-name:first_appeared', 'core/text-transform10#').
edge('expression:value.toNumber()', 'core/text-transform10#').
edge('table15', 'core/text-transform10#').
edge('core/text-transform11#', 'table17').
edge('col-name:last_appeared', 'core/text-transform11#').
edge('expression:value.toNumber()', 'core/text-transform11#').
edge('table16', 'core/text-transform11#').
edge('core/mass-edit4#', 'table18').
edge('col-name:times_appeared', 'core/mass-edit4#').
edge('table17', 'core/mass-edit4#').
edge('core/mass-edit5#', 'table19').
edge('col-name:times_appeared', 'core/mass-edit5#').
edge('table18', 'core/mass-edit5#').
edge('core/mass-edit6#', 'table20').
edge('col-name:times_appeared', 'core/mass-edit6#').
edge('table19', 'core/mass-edit6#').
edge('core/text-transform12#', 'table21').
edge('col-name:times_appeared', 'core/text-transform12#').
edge('expression:value.toNumber()', 'core/text-transform12#').
edge('table20', 'core/text-transform12#').
edge('core/text-transform13#', 'table22').
edge('col-name:times_appeared', 'core/text-transform13#').
edge('expression:grel:cells['menus_appeared'].value', 'core/text-transform13#').
edge('table21', 'core/text-transform13#').
edge('core/text-transform14#', 'table23').
edge('col-name:times_appeared', 'core/text-transform14#').
edge('expression:value.toNumber()', 'core/text-transform14#').
edge('table22', 'core/text-transform14#').
edge('core/text-transform15#', 'table24').
edge('col-name:menus_appeared', 'core/text-transform15#').
edge('expression:value.toNumber()', 'core/text-transform15#').
edge('table23', 'core/text-transform15#').
edge('core/text-transform16#', 'table25').
edge('col-name:first_appeared', 'core/text-transform16#').
edge('expression:grel:0', 'core/text-transform16#').
edge('table24', 'core/text-transform16#').
edge('core/text-transform17#', 'table26').
edge('col-name:last_appeared', 'core/text-transform17#').
edge('expression:grel:0', 'core/text-transform17#').
edge('table25', 'core/text-transform17#').
edge('core/text-transform18#', 'table27').
edge('col-name:name', 'core/text-transform18#').
edge('expression:grel:value.replace(\"\\\"\",_\"\")', 'core/text-transform18#').
edge('table26', 'core/text-transform18#').
edge('core/text-transform19#', 'table28').
edge('col-name:name', 'core/text-transform19#').
edge('expression:value.trim()', 'core/text-transform19#').
edge('table27', 'core/text-transform19#').
edge('core/text-transform20#', 'table29').
edge('col-name:name', 'core/text-transform20#').
edge('expression:value.replace(/\\s+/,'_')', 'core/text-transform20#').
edge('table28', 'core/text-transform20#').
edge('core/text-transform21#', 'table30').
edge('col-name:name', 'core/text-transform21#').
edge('expression:value.toTitlecase()', 'core/text-transform21#').
edge('table29', 'core/text-transform21#').