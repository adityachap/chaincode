FROM hyperledger/fabric-ccenv:x86_64-1.0.2
RUN chgrp -R 0 /var/ && chmod -R g=u /var/ 
ADD example_cc/*.* /chaincodesrc/
RUN chgrp -R 0 /chaincodesrc/ && chmod -R g=u /chaincodesrc/ 
