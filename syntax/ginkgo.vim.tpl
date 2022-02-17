{{/*
  This template is used by gensyntax.go to generate a vim syntax supporting
  Ginkgo and related assertion/matcher packages.
*/}}

if exists('b:current_syntax')
  finish
endif

runtime! syntax/go.vim
unlet! b:current_syntax

" Ginkgo keywords

syntax keyword ginkgoCallbacks AfterEach AfterSuite BeforeEach BeforeSuite JustBeforeEach SynchronizedAfterSuite SynchronizedBeforeSuite
highlight link ginkgoCallbacks Identifier

syntax keyword ginkgoGroups By Context Describe DescribeTable Entry It Specify When
highlight link ginkgoGroups Statement

syntax keyword ginkgoFocusedGroups FContext FDescribe FDescribeTable FEntry FIt FMeasure FSpecify FWhen
highlight link ginkgoFocusedGroups Underlined

syntax keyword ginkgoPendingGroups PContext PDescribe PDescribeTable PEntry PIt PMeasure PSpecify PWhen
highlight link ginkgoPendingGroups Todo

syntax keyword ginkgoDisabledGroups XContext XDescribe XDescribeTable XEntry XIt XMeasure XSpecify XWhen
highlight link ginkgoDisabledGroups Comment

" Gomega assertions
syntax keyword gomegaAssertions {{range $i, $word := .Assertions}}{{if $i}} {{end}}{{$word}}{{end}}
highlight link gomegaAssertions Constant

" Gomega matchers
syntax keyword gomegaMatchers {{range $i, $word := .Matchers}}{{if $i}} {{end}}{{$word}}{{end}}
highlight link gomegaMatchers Constant

let b:current_syntax = 'ginkgo'

" vi: set ft=vim :
