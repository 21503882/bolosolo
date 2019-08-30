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
<footer class="footer">
    <div class="wrapper fn__clear">
        <div class="fn__left">
            &copy; ${year}
            <a href="${servePath}">${blogTitle}</a>
            ${footerContent} &nbsp;•&nbsp;
            Powered by <a href="https://solo.b3log.org" target="_blank">Solo</a>
            <br>
            Theme <a rel="friend" href="https://github.com/b3log/solo-skins" target="_blank">${skinDirName}</a>
            <sup>[<a href="https://github.com/TryGhost/Casper" target="_blank">ref</a>]</sup>
            by <a href="http://vanessa.b3log.org" target="_blank">Vanessa</a>
        </div>
        <div class="fn__right">
            <a href="${servePath}/tags.html" rel="section">
            ${allTagsLabel}
            </a>
            &nbsp;•&nbsp;
            <a href="${servePath}/archives.html">
            ${archiveLabel}
            </a>
            &nbsp;•&nbsp;
            <a rel="archive" href="${servePath}/links.html">
            ${linkLabel}
            </a>
            <br>
            ${statistic.statisticPublishedBlogArticleCount} ${articleLabel} &nbsp;
            ${statistic.statisticPublishedBlogCommentCount} ${commentLabel} &nbsp;
            ${statistic.statisticBlogViewCount} ${viewLabel} &nbsp;
            ${onlineVisitorCnt} ${onlineVisitorLabel}
        </div>
    </div>
</footer>

<script type="text/javascript" src="${staticServePath}/js/lib/compress/pjax.min.js" charset="utf-8"></script>
<script type="text/javascript" src="${staticServePath}/js/common${miniPostfix}.js?${staticResourceVersion}"
        charset="utf-8"></script>
<script type="text/javascript"
        src="${staticServePath}/skins/${skinDirName}/js/common${miniPostfix}.js?${staticResourceVersion}"
        charset="utf-8"></script>
<#include "../../common-template/label.ftl">
${plugins}
