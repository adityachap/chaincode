FROM hyperledger/fabric-ccenv:x86_64-1.0.2
RUN chgrp -R 0 /var/ && chmod -R g=u /var/ 
ADD example_cc/*.* /chaincodesrc/
ADD scripts/*.* /scripts/
RUN chgrp -R 0 /scripts/ && chmod -R g=u /scripts/ 
WORKDIR /scripts
RUN ./buildchaincode.sh
RUN chgrp -R 0 /chaincodesrc/ && chmod -R g=u /chaincodesrc/ 
