stepping and helper
setLayout

	^ self layoutPolicy: TableLayout new; 
			listDirection: #leftToRight;
			listCentering: #center;
			layoutInset: 20; 
			cellInset: 5.