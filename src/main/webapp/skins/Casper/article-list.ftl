<#--

    Solo - A small and beautiful blogging system written in Java.
    Copyright (c) 2010-present, b3log.org

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<div class="articles">
<#list articles as article>
    <article class="item<#if article_index % 6 ==0> item--large</#if>">
        <a href="${servePath}${article.articlePermalink}" class="item__cover"
           style="background-image: url(${article.articleImg1URL})">
        </a>
        <div class="item__main">
            <#list article.articleTags?split(",") as articleTag>
                <#if articleTag_index == 0>
                    <#if article.category??>
                    <a class="item__tag"
                       href="${servePath}/category/${article.category.categoryURI}">${article.category.categoryTitle}</a>
                    <#else>
                    <a rel="tag" class="item__tag" href="${servePath}/tags/${articleTag?url('UTF-8')}">
                        ${articleTag}
                    </a>
                    </#if>
                </#if>
            </#list>
            <h2 class="item__title">
                <a rel="bookmark" href="${servePath}${article.articlePermalink}">
                    ${article.articleTitle}
                </a>
                <#if article.articlePutTop>
                    <sup>
                        ${topArticleLabel}
                    </sup>
                </#if>
                <#if article.hasUpdated>
                    <sup>
                        <a href="${servePath}${article.articlePermalink}">
                            ${updatedLabel}
                        </a>
                    </sup>
                </#if>
            </h2>
            <a class="item__abstract" pjax-title="${article.articleTitle}"
               href="${servePath}${article.articlePermalink}">
                <#if article.articleAbstractText?length gt 80>
                    ${article.articleAbstractText[0..80]}
                <#else>
                    ${article.articleAbstractText}
                </#if>

            </a>
            <div class="fn__clear">
                <a href="${servePath}/authors/${article.authorId}"
                   aria-label="${article.authorName}"
                   class="vditor-tooltipped vditor-tooltipped__n item__avatar">
                    <img src="${article.authorThumbnailURL}" />
                </a>
                <#if article.articleCommentCount != 0>
                <a class="item__meta" href="${servePath}${article.articlePermalink}#comments">
                    ${article.articleCommentCount} ${commentLabel}
                </a>
                <#else>
                    <a class="item__meta" href="${servePath}${article.articlePermalink}">
                        ${article.articleViewCount} ${viewLabel}
                    </a>
                </#if>
            </div>
        </div>
    </article>
</#list>
</div>

<#if 0 != paginationPageCount>
<nav class="pagination">
    <#if 1 != paginationPageNums?first>
        <a href="${servePath}${path}?p=${paginationPreviousPageNum}"
           aria-label="${previousPageLabel}"
           class="pagination__item vditor-tooltipped__n vditor-tooltipped">&laquo;</a>
        <a class="pagination__item" href="${servePath}${path}">1</a>
        <span class="pagination__item pagination__item--omit">...</span>
    </#if>
    <#list paginationPageNums as paginationPageNum>
        <#if paginationPageNum == paginationCurrentPageNum>
            <span class="pagination__item pagination__item--active">${paginationPageNum}</span>
        <#else>
            <a class="pagination__item" href="${servePath}${path}?p=${paginationPageNum}">${paginationPageNum}</a>
        </#if>
    </#list>
    <#if paginationPageNums?last != paginationPageCount>
        <span class="pagination__item pagination__item--omit">...</span>
        <a href="${servePath}${path}?p=${paginationPageCount}" class="pagination__item">${paginationPageCount}</a>
        <a href="${servePath}${path}?p=${paginationNextPageNum}" aria-label="${nextPagePabel}"
           class="pagination__item vditor-tooltipped__n vditor-tooltipped">&raquo;</a>
    </#if>
</nav>
</#if>