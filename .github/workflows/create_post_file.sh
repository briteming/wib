#!/bin/bash

echo Title ${TITLE}
echo Created At ${CREATED_AT}
echo Labels ${LABELS}
echo Body ${BODY}


POST_FILENAME="_posts/$(date +%Y-%m-%d)-$(echo -n ${TITLE}) | tr '[A-Z]' '[a-z]' | tr -c 'a-z' '-' }}.md"

echo --- > ${POST_FILENAME}
echo title: ${TITLE} >> ${POST_FILENAME}
echo layout: post >> ${POST_FILENAME}
echo date: $(date +"%Y-%m-%d %H:%M %z") >> ${POST_FILENAME}
echo --- >> ${POST_FILENAME}
echo >> ${POST_FILENAME}
echo "${BODY}" >> ${POST_FILENAME}
