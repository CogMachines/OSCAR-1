
==============================================
Definition overwritten 7/17/2014     9:9:2
--------------------------------------------------------------------------------
(DEFUN MAKE-BACKWARDS-INFERENCE
       (REASON BINDING INTEREST DEPTH PRIORITY SUPPORTING-NODES CLUES
        INSTANTIATIONS SUPPOSITION &OPTIONAL GENERATING-NODE)
  (COND ((OR (BACKWARDS-PREMISES REASON)
             (BACKWARDS-PREMISES-FUNCTION REASON))
         (CONSTRUCT-INITIAL-INTEREST-LINK SUPPORTING-NODES
                                          INSTANTIATIONS
                                          REASON
                                          INTEREST
                                          DEPTH
                                          PRIORITY
                                          BINDING
                                          SUPPOSITION
                                          :GENERATING-NODE
                                          GENERATING-NODE
                                          :REMAINING-PREMISES
                                          (BACKWARDS-PREMISES REASON)
                                          :CLUES
                                          CLUES))
        ((OR (NUMBERP (REASON-STRENGTH REASON))
             (>= (FUNCALL (REASON-STRENGTH REASON)
                          BINDING
                          SUPPORTING-NODES)
                 (DEGREE-OF-INTEREST INTEREST)))
         (DOLIST (P (FUNCALL (CONCLUSIONS-FUNCTION REASON) BINDING))
           (DRAW-CONCLUSION (CAR P)
                            SUPPORTING-NODES
                            REASON
                            INSTANTIATIONS
                            (DISCOUNT-FACTOR REASON)
                            DEPTH
                            NIL
                            (CDR P)
                            :BINDING
                            BINDING
                            :CLUES
                            CLUES)))))

==============================================
Definition overwritten 7/17/2014     9:48:9
--------------------------------------------------------------------------------
(DEFUN MAKE-BACKWARDS-INFERENCE
       (REASON BINDING INTEREST DEPTH PRIORITY SUPPORTING-NODES CLUES
        INSTANTIATIONS SUPPOSITION &OPTIONAL GENERATING-NODE)
  (COND ((OR (BACKWARDS-PREMISES REASON)
             (BACKWARDS-PREMISES-FUNCTION REASON))
         (CONSTRUCT-INITIAL-INTEREST-LINK SUPPORTING-NODES
                                          INSTANTIATIONS
                                          REASON
                                          INTEREST
                                          DEPTH
                                          PRIORITY
                                          BINDING
                                          SUPPOSITION
                                          :GENERATING-NODE
                                          GENERATING-NODE
                                          :REMAINING-PREMISES
                                          (BACKWARDS-PREMISES REASON)
                                          :CLUES
                                          CLUES))
        ((OR (NUMBERP (REASON-STRENGTH REASON))
             (>= (FUNCALL (REASON-STRENGTH REASON)
                          BINDING
                          SUPPORTING-NODES)
                 (DEGREE-OF-INTEREST INTEREST)))
         (DOLIST (P (FUNCALL (CONCLUSIONS-FUNCTION REASON) BINDING))
           (DRAW-CONCLUSION (CAR P)
                            SUPPORTING-NODES
                            REASON
                            INSTANTIATIONS
                            (DISCOUNT-FACTOR REASON)
                            DEPTH
                            NIL
                            (CDR P)
                            :BINDING
                            BINDING
                            :CLUES
                            CLUES)))))

==============================================
Definition overwritten 12/13/2015     23:46:53
--------------------------------------------------------------------------------
(DEFUN MAKE-BACKWARDS-INFERENCE (REASON BINDING INTEREST DEPTH PRIORITY SUPPORTING-NODES CLUES INSTANTIATIONS SUPPOSITION &OPTIONAL GENERATING-NODE)
 (COND
  ((OR (BACKWARDS-PREMISES REASON) (BACKWARDS-PREMISES-FUNCTION REASON))
   (CONSTRUCT-INITIAL-INTEREST-LINK SUPPORTING-NODES INSTANTIATIONS REASON INTEREST DEPTH PRIORITY BINDING SUPPOSITION :GENERATING-NODE GENERATING-NODE :REMAINING-PREMISES
    (BACKWARDS-PREMISES REASON) :CLUES CLUES))
  ((OR (NUMBERP (REASON-STRENGTH REASON)) (>= (FUNCALL (REASON-STRENGTH REASON) BINDING SUPPORTING-NODES) (DEGREE-OF-INTEREST INTEREST)))
   (DOLIST (P (FUNCALL (CONCLUSIONS-FUNCTION REASON) BINDING))
    (DRAW-CONCLUSION (CAR P) SUPPORTING-NODES REASON INSTANTIATIONS (DISCOUNT-FACTOR REASON) DEPTH NIL (CDR P) :BINDING BINDING :CLUES CLUES)))))

==============================================
Definition overwritten 12/19/2015     8:42:29
--------------------------------------------------------------------------------
(DEFUN MAKE-BACKWARDS-INFERENCE (REASON BINDING INTEREST DEPTH PRIORITY SUPPORTING-NODES CLUES INSTANTIATIONS SUPPOSITION &OPTIONAL GENERATING-NODE)
 (COND
  ((OR (BACKWARDS-PREMISES REASON) (BACKWARDS-PREMISES-FUNCTION REASON))
   (CONSTRUCT-INITIAL-INTEREST-LINK SUPPORTING-NODES INSTANTIATIONS REASON INTEREST DEPTH PRIORITY BINDING SUPPOSITION :GENERATING-NODE GENERATING-NODE :REMAINING-PREMISES
    (BACKWARDS-PREMISES REASON) :CLUES CLUES))
  ((OR (NUMBERP (REASON-STRENGTH REASON)) (>= (FUNCALL (REASON-STRENGTH REASON) BINDING SUPPORTING-NODES) (DEGREE-OF-INTEREST INTEREST)))
   (DOLIST (P (FUNCALL (CONCLUSIONS-FUNCTION REASON) BINDING))
    (DRAW-CONCLUSION (CAR P) SUPPORTING-NODES REASON INSTANTIATIONS (DISCOUNT-FACTOR REASON) DEPTH NIL (CDR P) :BINDING BINDING :CLUES CLUES)))))

==============================================
Definition overwritten 12/26/2015     12:15:44
--------------------------------------------------------------------------------
(DEFUN MAKE-BACKWARDS-INFERENCE
 (REASON BINDING INTEREST DEPTH PRIORITY SUPPORTING-NODES CLUES INSTANTIATIONS
  SUPPOSITION &OPTIONAL GENERATING-NODE)
 (COND
  ((OR (BACKWARDS-PREMISES REASON) (BACKWARDS-PREMISES-FUNCTION REASON))
   (CONSTRUCT-INITIAL-INTEREST-LINK SUPPORTING-NODES INSTANTIATIONS REASON INTEREST
    DEPTH PRIORITY BINDING SUPPOSITION :GENERATING-NODE GENERATING-NODE
    :REMAINING-PREMISES (BACKWARDS-PREMISES REASON) :CLUES CLUES))
  ((OR (NUMBERP (REASON-STRENGTH REASON))
    (>= (FUNCALL (REASON-STRENGTH REASON) BINDING SUPPORTING-NODES)
     (DEGREE-OF-INTEREST INTEREST)))
   (DOLIST (P (FUNCALL (CONCLUSIONS-FUNCTION REASON) BINDING))
    (DRAW-CONCLUSION (CAR P) SUPPORTING-NODES REASON INSTANTIATIONS
     (DISCOUNT-FACTOR REASON) DEPTH NIL (CDR P) :BINDING BINDING :CLUES CLUES)))))

==============================================
Definition overwritten 12/26/2015     12:16:8
--------------------------------------------------------------------------------
(DEFUN MAKE-BACKWARDS-INFERENCE
 (REASON BINDING INTEREST DEPTH PRIORITY SUPPORTING-NODES CLUES INSTANTIATIONS
  SUPPOSITION &OPTIONAL GENERATING-NODE)
 (COND
  ((OR (BACKWARDS-PREMISES REASON) (BACKWARDS-PREMISES-FUNCTION REASON))
   (CONSTRUCT-INITIAL-INTEREST-LINK SUPPORTING-NODES INSTANTIATIONS REASON INTEREST
    DEPTH PRIORITY BINDING SUPPOSITION :GENERATING-NODE GENERATING-NODE
    :REMAINING-PREMISES (BACKWARDS-PREMISES REASON) :CLUES CLUES))
  ((OR (NUMBERP (REASON-STRENGTH REASON))
    (>= (FUNCALL (REASON-STRENGTH REASON) BINDING SUPPORTING-NODES)
     (DEGREE-OF-INTEREST INTEREST)))
   (DOLIST (P (FUNCALL (CONCLUSIONS-FUNCTION REASON) BINDING))
    (DRAW-CONCLUSION (CAR P) SUPPORTING-NODES REASON INSTANTIATIONS
     (DISCOUNT-FACTOR REASON) DEPTH NIL (CDR P) :BINDING BINDING :CLUES CLUES)))))