(*
 * Copyright (c) 2005-2006 Tim Deegan <tjd@phlegethon.org>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 * dnsparameters.ml -- Names for various IANA defined DNS options
 *
 *)
   
let qclass_to_string = function 
    `INTERNET -> "IN"
  | `HESIOD -> "HS"
  | `CHAOS -> "CH"
  | `CSNET -> "CS"
  | `NONE -> "NONE"
  | `ANY -> "ANY"

let qtype_to_string = function
    `A -> "A"
  | `NS -> "NS"
  | `MD -> "MD"
  | `MF -> "MF"
  | `CNAME -> "CNAME"
  | `SOA -> "SOA"
  | `MB -> "MB"
  | `MG -> "MG"
  | `MR -> "MR"
  | `NULL -> "NULL"
  | `WKS -> "WKS"
  | `PTR -> "PTR"
  | `HINFO -> "HINFO"
  | `MINFO -> "MINFO"
  | `MX -> "MX"
  | `TXT -> "TXT"
  | `RP -> "RP"
  | `AFSDB -> "AFSDB"
  | `X25 -> "X25"
  | `ISDN -> "ISDN"
  | `RT -> "RT"
  | `NSAP -> "NSAP"
  | `NSAP_PTR -> "NSAP_PTR"
  | `SIG -> "SIG"
  | `KEY -> "KEY"
  | `PX -> "PX"
  | `GPOS -> "GPOS"
  | `AAAA -> "AAAA"
  | `LOC -> "LOC"
  | `NXT -> "NXT"
  | `EID -> "EID"
  | `NIMLOC -> "NIMLOC"
  | `SRV -> "SRV"
  | `ATMA -> "ATMA"
  | `NAPTR -> "NAPTR"
  | `KX -> "KX"
  | `CERT -> "CERT"
  | `A6 -> "A6"
  | `DNAME -> "DNAME"
  | `SINK -> "SINK"
  | `OPT -> "OPT"
  | `APL -> "APL"
  | `DS -> "DS"
  | `SSHFP -> "SSHFP"
  | `IPSECKEY -> "IPSECKEY"
  | `RRSIG -> "RRSIG"
  | `NSEC -> "NSEC"
  | `DNSKEY -> "DNSKEY"
  | `SPF -> "SPF"
  | `UINFO -> "UINFO"
  | `UID -> "UID"
  | `GID -> "GID"
  | `UNSPEC -> "UNSPEC"
  | `TKEY -> "TKEY"
  | `TSIG -> "TSIG"
  | `IXFR -> "IXFR"
  | `AXFR -> "AXFR"
  | `MAILB -> "MAILB"
  | `MAILA -> "MAILA"
  | `ANY -> "ANY"
  | `UNKNOWN x -> "TYPE" ^ (string_of_int x)

let opcode_to_string = function
    `QUERY -> "QUERY"
  | `IQUERY -> "IQUERY"
  | `STATUS -> "STATUS"
  | `NOTIFY -> "NOTIFY"
  | `UPDATE -> "UPDATE"

let rcode_to_string = function
    `NoError -> "NOERROR"
  | `FormErr -> "FORMERR"
  | `ServFail -> "SERVFAIL"
  | `NXDomain -> "NXDOMAIN"
  | `NotImp -> "NOTIMP"
  | `Refused -> "REFUSED"
  | `YXDomain -> "YXDOMAIN"
  | `YXRRSet -> "YXRRSET"
  | `NXRRSet -> "NXRRSET"
  | `NotAuth -> "NOTAUTH"
  | `NotZone -> "NOTZONE"
  | `BadVers -> "BADVERS"
  | `BadSig -> "BADSIG"
  | `BadKey -> "BADKEY"
  | `BadTime -> "BADTIME"
  | `BadMode -> "BADMODE"
  | `BadName -> "BADNAME"
  | `BadAlg -> "BADALG"
  | `Unknown _ -> "UNKNOWN"
