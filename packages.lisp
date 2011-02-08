;;;; +----------------------------------------------------------------+
;;;; | DBUS                                               DEATH, 2010 |
;;;; +----------------------------------------------------------------+

(defpackage #:dbus
  (:use #:cl)
  (:import-from #:split-sequence #:split-sequence)
  (:import-from #:alexandria
                #:circular-list #:ensure-list #:plist-hash-table
                #:starts-with-subseq #:when-let #:with-gensyms
                #:once-only #:hash-table-values)
  (:import-from #:xspam
                #:with-xspam-source #:make-xspam-source #:element
                #:one-or-more #:attribute #:_ #:zero-or-more
                #:optional-attribute)
  (:shadow #:method #:make-method)
  (:export
   ;; Utilities
   #:inexistent-entry
   #:inexistent-entry-designator
   #:entry-replacement-attempt
   #:entry-replacement-attempt-old
   #:entry-replacement-attempt-new
   ;; Server address protocol
   #:server-address
   #:server-address-transport-name
   #:server-address-property
   #:open-connection
   ;; Connection protocol
   #:connection
   #:connection-server-address
   #:connection-server-uuid
   #:connection-fd
   #:connection-pending-messages
   #:connection-next-serial
   #:drain-pending-messages
   #:close-connection
   #:wait-for-reply
   #:receive-message
   #:receive-line
   #:send-message
   #:send-line
   #:supported-authentication-mechanisms
   #:authenticate
   ;; Authentication mechanism protocol
   #:authentication-mechanism
   #:authentication-mechanism-name
   #:authentication-mechanism-textual-p
   #:feed-authentication-mechanism
   ;; Conditions
   #:dbus-error
   #:authentication-error
   #:authentication-error-command
   #:authentication-error-argument
   #:method-error
   #:method-error-arguments
   ;; Type-related operators
   #:sigexp
   #:signature
   #:pack
   #:unpack
   ;; Messages
   #:encode-message
   #:message
   #:standard-message
   #:message-endianness
   #:message-flags
   #:message-major-protocol-version
   #:message-body-length
   #:message-serial
   #:message-destination
   #:message-sender
   #:message-signature
   #:message-body
   #:method-call-message
   #:message-path
   #:message-interface
   #:message-member
   #:signal-message
   #:method-return-message
   #:message-reply-serial
   #:error-message
   #:message-error-name
   #:message-no-reply-expected
   #:message-no-auto-start
   #:decode-message
   #:invoke-method
   ;; Server addresses
   #:find-server-address-class
   #:standard-server-address
   #:generic-server-address
   #:parse-server-addresses-string
   #:session-server-addresses
   #:system-server-addresses
   ;; Authentication mechanisms
   #:find-authentication-mechanism-class
   #:standard-authentication-mechanism
   #:generic-authentication-mechanism
   ;; Connections
   #:with-open-connection
   #:standard-connection
   #:socket-connection-mixin
   #:open-socket-connection
   ;; Introspection
   #:object-connection
   #:object-path
   #:object-destination
   #:object-interface
   #:list-object-interfaces
   #:interface-name
   #:interface-method
   #:list-interface-methods
   #:method-name
   #:method-signature
   #:parse-introspection-document
   #:make-object-from-introspection
   #:object-invoke
   ;; Convenience
   #:hello
   #:bus
   #:bus-connection
   #:bus-name
   #:with-open-bus
   #:with-introspected-object
   ;; Unix Domain Sockets transport
   #:unix-server-address
   #:unix-connection
   ;; DBUS Cookie SHA1 authentication mechanism
   #:dbus-cookie-sha1-authentication-mechanism))
