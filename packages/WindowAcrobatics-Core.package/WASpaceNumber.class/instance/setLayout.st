stepping and helper
setLayout

	^ self layoutPolicy: TableLayout new; 
			listDirection: #leftToRight;
			listCentering: #center;
			layoutInset: 10; 
			cellInset: 5.