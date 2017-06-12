An event handler that maps morphic events to signals.

Adds support for #handlesMouseUp: which is not present in Morphic.

An event handler has its own signal connections stored locally to improve lookup performance. As signal processing happens only in the "UI Process" a null mutex is used to secure the connections. Do not try to connect or emit those signals from within another process.